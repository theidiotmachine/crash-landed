local Profile = require 'profile.profile'

local Collisions = {}

local activeCollisionObjects = {}
local activeWorldObjects = {}
local finalizedWorldObjects = {}

function Collisions.registerObject(object)
  activeCollisionObjects[object] = object.user.object
  activeWorldObjects[object.user.object] = true
  finalizedWorldObjects[object.user.object] = true
end

function Collisions.unregisterObject(object)
  activeCollisionObjects[object] = nil
  activeWorldObjects[object.user.object] = nil
  finalizedWorldObjects[object.user.object] = nil
end

function Collisions.registerFinalizedWorldObject(object)
  finalizedWorldObjects[object] = true
end

function Collisions.unregisterFinalizedWorldObject(object)
  finalizedWorldObjects[object] = nil
end

local function aggregateResolutionForCollisionObject(l, r)
  if not l then
    return r
  end
  
  return {x = l.x + r.x, y = l.y + r.y}
end

Collisions.frictionTable = {
    grass = 800,
    sand = 800,
    stone = 800,
    ice = 200,
    unknown = 700,
    waterY = 20,
    waterX = 400
  }
  
function Collisions:calcFriction(dt, stuff, objVelX, stuffVelX, frictionMultiplier)
  local friction = (Collisions.frictionTable[stuff] or Collisions.frictionTable.unknown) * dt * frictionMultiplier
  
  local dVelX = 0
  
  if stuffVelX > 0 then
    if objVelX > 0 then
      --object and surface moving in the same direction in +ive x
      if stuffVelX > objVelX then
        --the surface is moving faster than the object in +ive x
        if objVelX + friction > stuffVelX then
          dVelX = stuffVelX - objVelX
        else
          dVelX = friction
        end
      else
        --the object is moving faster than the surface in +ive x
        if objVelX - friction < stuffVelX then
          dVelX = stuffVelX - objVelX
        else
          dVelX = -friction
        end
      end
    else
      --object and surface moving in differrnt direction: stuff +ive x, object -ive x
      if objVelX + friction > stuffVelX then
        dVelX = stuffVelX - objVelX
      else
        dVelX = friction
      end
    end
  else
    if objVelX > 0 then
      --object and surface moving in differrnt direction: stuff -ive x, object +ive x
      if objVelX - friction < stuffVelX then
        dVelX = stuffVelX - objVelX
      else
        dVelX = -friction
      end
    else
      --object and surface moving in the same direction in -ive x
      if stuffVelX > objVelX then
        --object is moving faster than surface in -ive dir
        if objVelX + friction > stuffVelX then
          dVelX = stuffVelX - objVelX
        else
          dVelX = friction
        end
      else
        --object is moving slower than surface in -ive dir
        if objVelX - friction < stuffVelX then
          dVelX = stuffVelX - objVelX
        else
          dVelX = -friction
        end
      end
    end
  end
  
  return dVelX * dt
end

function Collisions.beginDynamics()
  for worldObject, _ in pairs(activeWorldObjects) do
    worldObject:beginDynamics()
  end
end

local function recordFriction(
  frictionsByWorldObject, dt, worldObject, collisionObject, onStuff, stuffVelX, separatingVector
)
  worldObject.onGround = true
  worldObject.onStuff = onStuff
  worldObject.groundNSV = separatingVector
  local frictionMultiplier = 1
  if worldObject.frictionMultiplier then
    frictionMultiplier = worldObject:frictionMultiplier()
  end
  
  local objVelX = worldObject:getPreCollisionVel(dt).x

  if not frictionsByWorldObject[worldObject] then
    frictionsByWorldObject[worldObject] = {}
  end
  
  if not frictionsByWorldObject[worldObject][collisionObject] then
    frictionsByWorldObject[worldObject][collisionObject] = {}
  end

  frictionsByWorldObject[worldObject][collisionObject].x = {onStuff, objVelX, stuffVelX, frictionMultiplier}
end

local function recordFluidFriction(
  frictionsByWorldObject, buoyancyByWorldObject, dt, worldObject, collisionObject, otherCollisionObject, onStuff
)
  worldObject.inLiquid = true
  worldObject.onStuff = onStuff
  local objVel = worldObject:getPreCollisionVel(dt)

  if not frictionsByWorldObject[worldObject] then
    frictionsByWorldObject[worldObject] = {}
  end

  if not frictionsByWorldObject[worldObject][collisionObject] then
    frictionsByWorldObject[worldObject][collisionObject] = {}
  end
  
  frictionsByWorldObject[worldObject][collisionObject].x = {onStuff .. "X", objVel.x, 0, 1}
  frictionsByWorldObject[worldObject][collisionObject].y = {onStuff .. "Y", objVel.y, 0, 1}
  
  if not buoyancyByWorldObject[worldObject] then
    buoyancyByWorldObject[worldObject] = {}
  end
  
  if worldObject.getWaterPoints then 
    for idx, waterPoint in pairs(worldObject:getWaterPoints()) do
      if otherCollisionObject:contains(waterPoint.x, waterPoint.y) then
        worldObject.immersedWaterPoints[idx] = true
        buoyancyByWorldObject[worldObject][idx] = true
      end
    end
  end
end

--[[
this code modified from https://gamedevelopment.tutsplus.com/series/how-to-create-a-custom-physics-engine--gamedev-12715
]]--
local function resolveMassyCollision(thisVel, thisMass, otherVel, otherMass, normal)
  local relVel = {
    x = otherVel.x - thisVel.x,
    y = otherVel.y - thisVel.y
  }
  
  local velAlongNormal = relVel.x * normal.x + relVel.y * normal.y
  if velAlongNormal > 0 then
    return false
  end
  
  --min of restitutions
  local e = 0.1
  
  local j = -(1+e) * velAlongNormal
  j = j / (1 / thisMass + 1 / otherMass)
  
  local impulse = { x = j * normal.x, y = j * normal.y }
  local thisVelInc = { x = -impulse.x / thisMass, y = -impulse.y / thisMass }
  local otherVelInc = { x = impulse.x / otherMass, y = impulse.y / otherMass }
  return true, thisVelInc, otherVelInc
end

--[[
this code from https://gamedevelopment.tutsplus.com/series/how-to-create-a-custom-physics-engine--gamedev-12715
]]--
local function positionCorrection(thisMass, otherMass, normal, penetrationDepth)
  local percent = 0.2 --to 0.8
  local correction = { 
    x = (penetrationDepth / (1/thisMass + 1/otherMass)) * percent * normal.x,
    y = (penetrationDepth / (1/thisMass + 1/otherMass)) * percent * normal.y
  }
  local thisCorrection = {
    x = -(1/thisMass) * correction.x,
    y = -(1/thisMass) * correction.y,
  }
  local otherCorrection = {
    x = (1/otherMass) * correction.x,
    y = (1/otherMass) * correction.y,
  }
  return thisCorrection, otherCorrection
end

--[[
]]--
function Collisions.run(game, dt)
  local HC = game.HC
  local collisions = {}

  local numCollisions = 0
  local numACO = 0  
  local pt = {}
  local pt0 = {}
  local ptd = { 0 }
  --[[
  if profiler then
    pt[1] = love.timer.getTime()
  end
  ]]--
  for worldObject, _ in pairs(activeWorldObjects) do
    worldObject:beginCollision(dt)
  end
  
  --[[
  if profiler then
    pt[2] = love.timer.getTime()
  end
  ]]--
  
  local resolutionsByWorldObject = {}
  local frictionsByWorldObject = {}
  local buoyancyByWorldObject = {}
  
  --walk over all the active objects in the world
  for collisionObject, _ in pairs(activeCollisionObjects) do
    local worldObject = collisionObject.user.object
    numACO = numACO + 1
    --actually run the collisions
    --[[
    if profiler then
      pt0[1] = love.timer.getTime()
    end
    ]]--
    local pcols = game.HC.collisions(collisionObject)
    --[[
    if profiler then
      pt0[2] = love.timer.getTime()
      ptd[1] = ptd[1] + (pt0[2] - pt0[1])
    end
    ]]--
    for otherCollisionObject, separatingVector in pairs(pcols) do
      if otherCollisionObject.user then
        local otherWorldUser = otherCollisionObject.user
        
        --only do collision resolution once.
        if not collisions[otherCollisionObject] or not collisions[otherCollisionObject][collisionObject] then
          local collided = false
          local resultVector = nil
          local otherResultVector = nil
          if otherWorldUser.properties and otherWorldUser.properties.colType then
            if otherWorldUser.properties.colType == "static" then
              if collisionObject.user.properties then
                if collisionObject.user.properties.colType == "massy" then
                  --massy vs static
                  if collisionObject.user.properties.colFriction then                    
                    recordFriction(frictionsByWorldObject, dt, worldObject, collisionObject, 
                      otherWorldUser.stuff or "unknown", 0, separatingVector
                    )
                  end
                  
                  resultVector = { x = separatingVector.x, y = separatingVector.y }
                  otherResultVector = { x = 0, y = 0 }
                  collided = true
                  
                elseif collisionObject.user.properties.colType == "none" then
                  --none vs static
                  --none means the player feet, which is a bit rubbish
                  if collisionObject.user.properties.colFriction then
                    recordFriction(frictionsByWorldObject, dt, worldObject, collisionObject, 
                      otherWorldUser.stuff or "unknown", 0, separatingVector
                    )
                  end
                  
                  resultVector = { x = 0, y = 0 }
                  otherResultVector = { x = 0, y = 0 }
                  collided = true
                end
              end
              
            elseif otherWorldUser.properties.colType == "massy" then
              if collisionObject.user.properties and collisionObject.user.properties.colType == "massy" then
                --massy vs massy
                local otherWorldObject = otherWorldUser.object
                --decide which way to apply friction.
                if separatingVector.y < 0 and collisionObject.user.properties.colFriction then
                  recordFriction(frictionsByWorldObject, dt, worldObject, collisionObject, 
                    otherWorldUser.stuff or "unknown", otherWorldObject:getPreCollisionVel(dt).x, separatingVector
                  )
                    
                elseif separatingVector.y > 0 and otherWorldUser.properties.colFriction then
                  recordFriction(frictionsByWorldObject, dt, otherWorldObject, otherCollisionObject, 
                    collisionObject.user.stuff or "unknown", worldObject:getPreCollisionVel(dt).x, 
                    { x = -separatingVector.x, y = -separatingVector.y }
                  )
                end
                
                --now do the full collision physics
                local svlsq = (separatingVector.x*separatingVector.x + separatingVector.y*separatingVector.y)
                if svlsq > 0 then
                  local svl = math.sqrt(svlsq)
                  local normal = {x=-separatingVector.x/svl, y=-separatingVector.y/svl}
                  local thisVelInc
                  local otherVelInc
                  collided, thisVelInc, otherVelInc = resolveMassyCollision(
                    worldObject:getPreCollisionVel(dt), collisionObject.user.properties.mass,
                    otherWorldObject:getPreCollisionVel(dt), otherWorldUser.properties.mass,
                    normal
                  )
                
                  if collided then
                    local thisCorrection, otherCorrection = positionCorrection(
                      collisionObject.user.properties.mass, otherWorldUser.properties.mass,
                      normal, svl
                      )
                    resultVector = {
                      x = thisVelInc.x * dt + thisCorrection.x, 
                      y = thisVelInc.y * dt + thisCorrection.y,
                    }
                    otherResultVector = {
                      x = otherVelInc.x * dt + otherCorrection.x,
                      y = otherVelInc.y * dt + otherCorrection.y
                    }
                  end
                else
                  collided = false
                end
              elseif collisionObject.user.properties.colType == "none" then
                if separatingVector.y < 0 and collisionObject.user.properties.colFriction then
                  local otherWorldObject = otherWorldUser.object
                  recordFriction(
                    frictionsByWorldObject, dt, worldObject, collisionObject, 
                    otherWorldUser.stuff or "unknown", otherWorldObject:getPreCollisionVel(dt).x, 
                    separatingVector
                  )
                end
              
                collided = true
                resultVector = { x = 0, y = 0 }
                otherResultVector = { x = 0, y = 0 }
              end
            elseif otherWorldUser.properties.colType == "none" then
              
              if collisionObject.user.properties and collisionObject.user.properties.colType == "massy" then
                local otherWorldObject = otherWorldUser.object
                if separatingVector.y > 0 and otherWorldUser.properties.colFriction then
                  recordFriction(frictionsByWorldObject, dt, otherWorldObject, otherCollisionObject, 
                    collisionObject.user.stuff or "unknown", worldObject:getPreCollisionVel(dt).x, 
                    { x = -separatingVector.x, y = -separatingVector.y }
                  )
                end
              end
              
              collided = true
              resultVector = { x = 0, y = 0 }
              otherResultVector = { x = 0, y = 0 }
            elseif otherWorldUser.properties.colType == "liquid" then
              if collisionObject.user.properties and collisionObject.user.properties.colType == "massy" then
                recordFluidFriction(frictionsByWorldObject, buoyancyByWorldObject, dt, 
                    worldObject, collisionObject, otherCollisionObject, otherWorldUser.stuff or "unknown"
                  )
              end
              collided = true
              resultVector = { x = 0, y = 0 }
              otherResultVector = { x = 0, y = 0 }
            elseif otherWorldUser.properties.colType == "conveyer" then
              local otherWorldObject = otherWorldUser.object
              if collisionObject.user.properties.colType == "massy" then
                if collisionObject.user.properties.colFriction then
                  recordFriction(frictionsByWorldObject, dt, worldObject, collisionObject, 
                    otherWorldUser.stuff or "unknown", otherWorldObject:getPreCollisionVel(dt).x, 
                    separatingVector
                  )
                end
                resultVector = { x = separatingVector.x, y = separatingVector.y }
                otherResultVector = { x = 0, y = 0 }
                collided = true
              elseif collisionObject.user.properties.colType == "none" then
                if collisionObject.user.properties.colFriction then
                  recordFriction(frictionsByWorldObject, dt, worldObject, collisionObject, 
                    otherWorldUser.stuff or "unknown", otherWorldObject:getPreCollisionVel(dt).x, 
                    separatingVector
                  )
                end
                resultVector = { x = 0, y = 0 }
                otherResultVector = { x = 0, y = 0 }
                collided = true
              end
            end
          end
                    
          if collided then
            numCollisions = numCollisions + 1
            if not resolutionsByWorldObject[worldObject] then
              resolutionsByWorldObject[worldObject] = {}
            end
            
            resolutionsByWorldObject[worldObject][collisionObject] = aggregateResolutionForCollisionObject(
              resolutionsByWorldObject[worldObject][collisionObject], resultVector)
            
            if worldObject.collision then
              worldObject:collision(game, dt, collisionObject, otherCollisionObject, otherCollisionObject.user.type, 
                otherWorldUser, separatingVector)
            end
            
            if otherWorldUser.object then
              local otherWorldObject = otherWorldUser.object
              
              if not resolutionsByWorldObject[otherWorldObject] then
                resolutionsByWorldObject[otherWorldObject] = {}
              end
            
              resolutionsByWorldObject[otherWorldObject][otherCollisionObject] = aggregateResolutionForCollisionObject(
                resolutionsByWorldObject[otherWorldObject][otherCollisionObject], otherResultVector)
            
              if otherWorldObject.collision then
                otherWorldObject:collision(game, dt, otherCollisionObject, collisionObject, collisionObject.user.type, 
                  collisionObject.user, {x = -separatingVector.x, y = -separatingVector.y})
              end
            end
          end
        
          if not collisions[collisionObject] then
            collisions[collisionObject] = {}
          end

          collisions[collisionObject][otherCollisionObject] = true
        
        end
      end
    end
  end
  
  --[[
  if profiler then
    pt[3] = love.timer.getTime()
  end
  ]]--
  
  for worldObject, frictionsForWorldObject in pairs(frictionsByWorldObject) do
    for collisionObject, frictionData in pairs(frictionsForWorldObject) do
      local fricR = {x=0, y=0}
      if frictionData.x then
        fricR.x = Collisions:calcFriction(dt, frictionData.x[1], frictionData.x[2], frictionData.x[3], frictionData.x[4])
      end
      if frictionData.y then
        fricR.y = Collisions:calcFriction(dt, frictionData.y[1], frictionData.y[2], frictionData.y[3], frictionData.y[4])
      end
      if resolutionsByWorldObject[worldObject] then
      local old = resolutionsByWorldObject[worldObject][collisionObject]
      resolutionsByWorldObject[worldObject][collisionObject] = { x = old.x + fricR.x, y = old.y + fricR.y }
      end
    end
  end
  
  local netBuoyancyByWorldObject = {} 
  for worldObject, waterPointsForWorldObject in pairs(buoyancyByWorldObject) do 
    netBuoyancyByWorldObject[worldObject] = {x=0, y=0}
    for _, waterPoint in pairs(waterPointsForWorldObject) do
      netBuoyancyByWorldObject[worldObject].y = netBuoyancyByWorldObject[worldObject].y + worldObject.buoyancyPerWaterPoint * dt
    end
  end
  
  --[[
  if profiler then
    pt[4] = love.timer.getTime()
  end
  ]]--
  
  for worldObject, resolutionsForWorldObject in pairs(resolutionsByWorldObject) do
    local netResolutionForWorldObject = netBuoyancyByWorldObject[worldObject]
    for _, resolution in pairs(resolutionsForWorldObject) do
      netResolutionForWorldObject = aggregateResolutionForCollisionObject(netResolutionForWorldObject, resolution)
    end
    if worldObject.resolveCollision then
      worldObject:resolveCollision(game, dt, netResolutionForWorldObject)
    end
  end
  
  --[[
  if profiler then
    pt[5] = love.timer.getTime()
  end
  ]]--
  
  for worldObject, _ in pairs(finalizedWorldObjects) do
    worldObject:finalizeCollision(game, dt)
  end
  
  --[[
  if profiler then
    pt[6] = love.timer.getTime()
  end
  
  if profiler then 
    Profile.updateFrag('collisionsBegin', pt[2] - pt[1])
    Profile.updateFrag('collisionsCol', pt[3] - pt[2])
    Profile.updateFrag('HC', ptd[1])
    Profile.updateFrag('collisionsFric', pt[4] - pt[3])
    Profile.updateFrag('collisionsRes', pt[5] - pt[4])
    Profile.updateFrag('collisionsFin', pt[6] - pt[5])
    Profile.update('collisions', numCollisions)
    Profile.update('dynamicObjects', numACO)
  end
  ]]--
end


return Collisions