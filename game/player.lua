local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local json = require "json" 
local Collisions = require 'game.collisions'
local Particles = require 'particles'
local Sound = require 'sound'

local player = {}
local Player = {}

local function playerLoadAssets()
  local imageFile = love.graphics.newImage("assets/art/beige_alien_tps.png")
  local jsonTxt = love.filesystem.read("assets/art/beige_alien_tps.json")
  local jsonFrames = json.decode(jsonTxt).frames
  for _, jsonFrame in pairs(jsonFrames) do
    player.beigeFrames[jsonFrame.filename] = {
      quad=love.graphics.newQuad(jsonFrame.frame.x, jsonFrame.frame.y, jsonFrame.frame.w, jsonFrame.frame.h,
        imageFile:getDimensions()),
      texture=imageFile,
      w = jsonFrame.frame.w,
      h = jsonFrame.frame.h
    }
  end
  
  player.beigeAnims = {
    climb = { 
      frames = { player.beigeFrames[ "alienBiege_climb1.png" ], player.beigeFrames[ "alienBiege_climb2.png" ] },
      t = 0.1
    },
    climbStatic = { 
      frames = { player.beigeFrames[ "alienBiege_climb1.png" ] },
      t = 0
    },
    walk = {
      frames = { player.beigeFrames[ "alienBiege_walk1.png" ], player.beigeFrames[ "alienBiege_walk2.png" ] },
      t = 0.1
    },
    stand = {
      frames = { player.beigeFrames[ "alienBiege_stand.png" ] },
      t = 0
    },
    jump = {
      frames = { player.beigeFrames[ "alienBiege_jump.png" ] },
      t = 0
    },
    duck = {
      frames = { player.beigeFrames[ "alienBiege_duck.png" ] },
      t = 0
    },
    hit = {
      frames = { player.beigeFrames[ "alienBiege_hit.png" ] },
      t = 0
    },
    swim = {
      frames = { player.beigeFrames[ "alienBiege_swim1.png" ], player.beigeFrames[ "alienBiege_swim2.png" ] },
      t = 0.1
    },
    swimStatic = {
      frames = { player.beigeFrames[ "alienBiege_swim1.png" ] },
      t = 0
    }
  }
end

local function playerUnloadAssets()
  player.beigeFrames = {}
  player.beigeAnims = {}
end

local TELEPORT_TIME = 0.5

player.beigeFrames = {}
player.beigeAnims = {}

function Player:init(game, object, tile, map)
  --local frame = player.beigeFrames['alienBiege_stand.png']
  
  --teeny bit of a hack to deal with the fact that the player is a funny shape
  local x = object.x + tile.width/2
  local y = object.y + tile.height/2
  Object.initLoc(self, x, y, 2)
  Object.register(self, object, {type='player'}, map)
  
  self.prevpos = {x=x, y=y}
  self.groundNSV = {x=0, y=0}
  self.collisionResolutionVector = {x=0, y=0}
  self.anim = player.beigeAnims["stand"]
  self.animCounter = 0
  self.animIndex = 1
  self.animName = "stand"
  self.animFlip = false
    
  self.vel = {x=0, y=0}
  self.ouchVel = {x=0, y=0}
  self.onGround = false
  self.crouching = false
  self.jumpCounter = 0.1
  
  --self.money=0
  self.health = 2
  self.healthMax = 2
  self.invulerableCounter = 0 -- 10000000000000 --0
  self.ouchCounter = 0
  self.ouch = false

  self.buoyancyPerWaterPoint = -2 / 4
  self.immersedWaterPoints = {false, false, false, false}
  
  self.onladder=false
  self.wasOnLadder = false
  
  self.inSlime = false
  self.wasInSlime = false
  
  --this is how we start
  self.teleportTimer = TELEPORT_TIME
  self.teleportLoc = { x = self.pos.x, y = self.pos.y }
  self.teleportMode = 'in'
  
  self.inDialog = false

  self:setHCShapes(game, "stand")
end

function Player:destroy(game)
  Object.destroy(self, game)
  if self.mainHCShape then
    Collisions.unregisterObject(self.mainHCShape)
    game.HC.remove(self.mainHCShape)
    self.mainHCShape = nil
  end
  
  if self.footHCShape then
    Collisions.unregisterObject(self.footHCShape)
    game.HC.remove(self.footHCShape)
    self.footHCShape = nil
  end
end

local function newPlayer(...)
	return common_local.instance(Player, ...)
end


function Player:setHCShapes(game, mode)
  local HC = game.HC
  if self.mainHCShape then
    Collisions.unregisterObject(self.mainHCShape)
    HC.remove(self.mainHCShape)
  end
  
  if self.footHCShape then
    Collisions.unregisterObject(self.footHCShape)
    HC.remove(self.footHCShape)
  end
  
  local x = self.pos.x
  local y = self.pos.y
  
  if mode == "stand" then
    local frame = player.beigeFrames['alienBiege_stand.png']
    self.mainHCShape = HC.polygon(      
      x-frame.w/2+22,    y-frame.h+frame.w/4,
      x-frame.w/4+2,    y-frame.h+20,
      x+frame.w/4-2,    y-frame.h+20,
      x+frame.w/2-22,    y-frame.h+frame.w/4,
      
      x+frame.w/2-12,    y-frame.h+frame.w/2,
      x+frame.w/4,      y-0.1,
      x,                y-1.1,
      x-frame.w/4,      y-0.1,
      x-frame.w/2+12,    y-frame.h+frame.w/2
    )
    
    
    self.footHCShape = HC.polygon(      
      x+frame.w/4,      y,
      x,                y-1,
      x-frame.w/4,      y
    )
    self.waterPoints = {{x=0, y=-5}, {x=0, y=-frame.h*0.25-5}, {x=0, y=-frame.h*0.5-5}, {x=0, y=-frame.h*0.75-5}}
  else
    local frame = player.beigeFrames['alienBiege_duck.png']
    self.mainHCShape = HC.polygon(
      x-frame.w/2+22,    y-frame.h+frame.w/4,
      x-frame.w/4+2,    y-frame.h+20,
      x+frame.w/4-2,    y-frame.h+20,
      x+frame.w/2-22,    y-frame.h+frame.w/4,
      
      x+frame.w/2-12,    y-frame.h+frame.w/2,
      x+frame.w/4,      y-0.1,
      x,                y-1.1,
      x-frame.w/4,      y-0.1,
      x-frame.w/2+12,    y-frame.h+frame.w/2
    )
    self.footHCShape = HC.polygon(      
      x+frame.w/4,      y,
      x,                y-1,
      x-frame.w/4,      y
    )
    self.waterPoints = {{x=0, y=-5}, {x=0, y=-frame.h*0.25-5}, {x=0, y=-frame.h*0.5-5}, {x=0, y=-frame.h*0.75-5}}
  end
  self.mainHCShape.user = {}
  self.mainHCShape.user.object =  self
  self.mainHCShape.user.type = "player"
  self.mainHCShape.user.properties = { colType = "massy", mass = 1 }
  self.mainHCShape.userType = "main"
  Collisions.registerObject(self.mainHCShape)
  self.footHCShape.user = {}
  self.footHCShape.user.object =  self
  self.footHCShape.userType = "foot"
  self.footHCShape.user.properties = { colType = "none", 
    --mass = 1, 
    colFriction = true }
  self.footHCShape.user.type = "player"
  
  Collisions.registerObject(self.footHCShape)
end

function Player:playAnimation(animName)
  if not (self.animName == animName) then
    self.animCounter = 0
    self.animIndex = 1
    self.animName = animName
    self.anim = player.beigeAnims[ animName ]
  end
end

function Player:update(game, dt)
  self:updateFromInput(game, dt)
end

function Player:die(game)
  game.money = game.money - 50
  if game.money < 0 then
    game.money = 0
  end
  self.teleportRequest = { x = game.restartPoint.x, y = game.restartPoint.y }
  self.teleportMode = 'in'
  self.health = self.healthMax
  self.invulerableCounter = 2
  game:sendResetRequest()
end

function Player:updateFromInput(game, dt)
  --asked to teleport?
  if self.teleportRequest then
    self:moveTo(self.teleportRequest.x, self.teleportRequest.y)
    self.teleportLoc = { x = self.teleportRequest.x, y = self.teleportRequest.y }
    self.teleportTimer = TELEPORT_TIME
    self.teleportRequest = nil
    
    self:playAnimation("stand")
    self:setHCShapes(game, "stand")
    Sound.playFX("assets/sound/teleport1.ogg")
    return
  end
  
  --fallen off the world?
  if self.pos.y > game.map.height * game.map.tileheight then
    self:die(game)
    return
  end
  
  --[[
  if self.inDialog then
    return
  end
  ]]--
  
  --let's set up!
  self.prevpos.x = self.pos.x
  self.prevpos.y = self.pos.y
  self.collisionResolutionVector = {x=0, y=0}
  self.prevInLiquid = self.inLiquid
  
  --deal with external pushes (ouch velocities)
  self.vel.x = self.vel.x + self.ouchVel.x
  self.ouchVel.x = 0
  self.vel.y = self.vel.y + self.ouchVel.y
  self.ouchVel.y = 0
  
  if self.teleportTimer > 0 then
    self.teleportTimer = self.teleportTimer - dt
    if self.teleportTimer < 0 then
      self.teleportTimer = 0
      self.teleportLoc = nil
      if self.teleportMode == 'out' then
        self.ouch = false
        self.ouchCounter = 0
        self.ouchVel = { x = 0, y = 0 }
        
        self:die(game)
        return
      end
    else
      if self.teleportMode == 'out' then
        self.teleportLoc.x = self.pos.x
        self.teleportLoc.y = self.pos.y
      end
    end
  end
  
  if self.invulerableCounter > 0 then
    self.invulerableCounter = self.invulerableCounter -dt
    if self.invulerableCounter < 0 then
      self.invulerableCounter = 0
    end
  end
  
  if self.ouchCounter > 0 then
    self.ouchCounter = self.ouchCounter -dt
    if self.ouchCounter < 0 then
      self.ouchCounter = 0
      self.ouch = false
    end
  end
  
  local anim = "stand"
  if self.inLiquid then
    anim = "swimStatic"
  end
  
  if self.onLadder then
    if not self.onGround or (not self.rightKeyDown and not self.leftKeyDown) then
      anim = "climbStatic"
      self.vel.y = 0
      self.vel.x = 0
    end
  end
  
  --Apply gravity. Do it even if we're standing on stuff, 
  --because the collision detection will fix it up.
  local crouching = false
  if not self.ouch and self.crouchKeyDown then
    if self.inLiquid then
      self.vel.y = self.vel.y + 900 * dt
      anim = "swim"
    elseif self.onLadder then
      anim = "climb"
      self.vel.y = 200
    else
      crouching = true
      anim = "duck"
      self.vel.y = self.vel.y + 1500 * dt
    end
  else
    if self.inLiquid then
      self.vel.y = self.vel.y + 400 * dt
    elseif self.onLadder and not self.onGround then
      
    else
      self.vel.y = self.vel.y + 500 * dt
    end
  end

  if not (crouching == self.crouching) then
    if crouching then
      self:setHCShapes(game, "crouch")
    else
      self:setHCShapes(game, "stand")
    end
    self.crouching = crouching
  end
  
  local accelerating = false
  
  --calc the ground vec
  local groundVec = {x = 0, y = 0}
  local l = math.sqrt(self.groundNSV.x * self.groundNSV.x 
    + self.groundNSV.y * self.groundNSV.y)
  if l > 0 then 
    groundVec.x = self.groundNSV.x / l
    groundVec.y = self.groundNSV.y / l
  end
  
  if not self.ouch and self.leftKeyDown and not crouching then
    if self.onGround then
      local netAcc = -dt * 1500
      local accx = -groundVec.y * netAcc
      if accx > 0 then
        accx = 0
      end
      
      local accy = groundVec.x * netAcc
      self.vel.x = self.vel.x + accx
      self.vel.y = self.vel.y + accy
      anim = "walk"
    elseif self.inLiquid then
      self.vel.x = self.vel.x - dt * 600
      anim = "swim"
    elseif self.onLadder then 
      self.vel.x = -200
      anim = "climb"
    else 
      if self.vel.x > 0 then
        self.vel.x = self.vel.x - dt * 300
      else
        self.vel.x = self.vel.x - dt * 150
      end
      anim = "walk"
    end
    
    accelerating = true
    
    self.animFlip = true
  end
  
  if not self.ouch and self.rightKeyDown and not crouching then
    if self.onGround then
      local netAcc = dt * 1500
      local accx = -groundVec.y * netAcc
      if accx < 0 then
        accx = 0
      end

      local accy = groundVec.x * netAcc
      self.vel.x = self.vel.x + accx
      self.vel.y = self.vel.y + accy
      
      anim = "walk"
    elseif self.inLiquid then
      self.vel.x = self.vel.x + dt * 600
      anim = "swim"
    elseif self.onLadder then 
      self.vel.x = 200
      anim = "climb"
    else
      if self.vel.x < 0 then
        self.vel.x = self.vel.x + dt * 300
      else
        self.vel.x = self.vel.x + dt * 150
      end
      anim = "walk"
    end
    
    accelerating = true
    
    self.animFlip = false
  end
  
  --jump
  if self.jumpKeyDown then
    if self.inLiquid then
      if self.onGround then
        self.vel.y = self.vel.y - 220
      else
        self.vel.y = self.vel.y - 600 * dt
      end
      
      anim = "swim"
    elseif self.onLadder then
      anim = "climb"
      self.vel.y = -200
    elseif self.onGround then
      self.vel.y = self.vel.y - 520
      Sound.playFX("assets/sound/theo-alien-jump.ogg")
    end
  end
  
  if self.onLadder then
    
  elseif not self.onGround and not accelerating and not self.crouching then
    if self.ouch then
      anim = "hit"
    else
      self.jumpCounter = self.jumpCounter - dt
      if self.jumpCounter < 0 then
        self.jumpCounter = 0
        if self.inLiquid then 
          --anim = "swimStatic"
        else
          anim = "jump"  
        end
        
      end
    end
  else
    self.jumpCounter = 0.1
  end
  
  --max speeds
  local minSpeed = -700
  if self.inLiquid then
    minSpeed = -400
  end
  local maxSpeed = 700
  local maxFallSpeed = 1400
  if self.inLiquid then
    maxSpeed = 500
    maxFallSpeed = 500
  end
  
  self.vel.x = math.max(self.vel.x, minSpeed)
  self.vel.x = math.min(self.vel.x, maxSpeed)
  self.vel.y = math.max(self.vel.y, minSpeed)
  self.vel.y = math.min(self.vel.y, maxFallSpeed)
  
  local dx = self.vel.x * dt
  local dy = self.vel.y * dt
  self:move(dx, dy)
  
  self:playAnimation(anim)
  
  if self.anim.t > 0 then
    self.animCounter = self.animCounter + dt
    if self.animCounter >= self.anim.t then
      self.animIndex = self.animIndex + 1
      if self.animIndex > #self.anim.frames then
        self.animIndex = 1
      end
      self.animCounter = 0
    end
  end
end

function Player:takeDamage(game, dt, damageType, amount, separatingVector, source)
  if self.invulerableCounter == 0 then
    Sound.playFX("assets/sound/theo-alien-ow.ogg")
    
    self.health = self.health - amount
      
    if self.health == 0 then
      --it's the end...
      self.invulerableCounter = TELEPORT_TIME
      self.teleportTimer = TELEPORT_TIME
      self.teleportLoc = { x = self.pos.x, y = self.pos.y }
      self.teleportMode = 'out'
      self.ouch = true
    else
      if damageType == 'spike' then
        --bounce off whatever we hit
        if separatingVector.x > 0 then
          self.ouchVel.x = 300
        elseif separatingVector.x < 0 then
          self.ouchVel.x = -300
        end
        
        if separatingVector.y <= 0 then 
          self.ouchVel.y = -300
        else 
          self.ouchVel.y = 300
        end
      elseif damageType == 'explosion' then
        local explosionVec = {
          x = self.pos.x - source.x,
          y = (self.pos.y - 64) - source.y
        }
        local evlnsq = explosionVec.x*explosionVec.x + explosionVec.y*explosionVec.y
        local evln = math.sqrt(evlnsq)
        self.ouchVel.x = 600 * explosionVec.x/evln 
        self.ouchVel.y = 600 * explosionVec.y/evln
      end
    end
    
    --some fx to indicate an ouch 
    local partpos = {
      x = (self.pos.x + source.x) / 2,
      y = (self.pos.y - 64 + source.y) / 2
    }
    Particles.createNewOuchSet(partpos)
      
    --temporary invulnerability
    self.invulerableCounter = 1
      
    --ouch!
    self.ouchCounter = 0.5
    self.ouch = true
  end
end

function Player:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "ground" then
    if otherUser.stuff == "water" and not self.prevInLiquid then
      Particles.createNewSplashSet(self.pos, self.vel.y)
    end
  elseif otherType == "coin" then
    local otherObject = otherUser.object
    game.money = game.money + otherObject.properties.money
    Sound.playFX("assets/sound/coin1.ogg")
  elseif otherType == "gem" then
    local otherObject = otherUser.object
    game.state.gems[otherObject.properties.color] = true
    Sound.playFX("assets/sound/powerUp9.ogg")
  elseif otherType == "ladder" then
    local ladderPoint = self:getWaterPoints()[3]
    if otherCollisionObject:contains(ladderPoint.x, ladderPoint.y) then
      self.onLadder = true
    end
  elseif otherType == "slime" then
    self.inSlime = true
    
  elseif otherType == "barnacle" or otherType == "spikes" or otherType == "fish" 
    or otherType == "jelly"
    or (otherType == "cog" and otherUser.object.properties.spinning) then
      self:takeDamage(game, dt, 'spike', 1, separatingVector, otherUser.object.pos)
  end
end

function Player:getWaterPoints()
  local out = {}
  for _, waterPoint in pairs(self.waterPoints) do
    table.insert(out, {x=self.pos.x + waterPoint.x, y=self.pos.y + waterPoint.y})
  end
  return out
end


function Player:frictionMultiplier()
  if self.inSlime or self.wasInSlime then 
    return 0
  elseif self.crouching then
    return 1.5
  else
    return 1
  end
end

function Player:resolveCollision(game, dt, resolutionVector)
  self:move(resolutionVector.x, resolutionVector.y)
end

function Player:beginDynamics()
  if self.teleportTimer <= 0 and self.inDialog == false then
    self.crouchKeyDown = love.keyboard.isDown('s') or love.keyboard.isDown('down')
    self.leftKeyDown = love.keyboard.isDown('a') or love.keyboard.isDown('left')
    self.rightKeyDown = love.keyboard.isDown('d') or love.keyboard.isDown('right')
    self.jumpKeyDown = love.keyboard.isDown('w') or love.keyboard.isDown('up')
  else
    self.crouchKeyDown = false
    self.leftKeyDown = false
    self.rightKeyDown = false
    self.jumpKeyDown = false
  end

end

function Player:beginCollision(dt)
  --self.ouchVel = {x=0, y=0}
  self.onGround = false
  self.inLiquid = false
  self.wasInSlime = self.inSlime
  self.inSlime = false
  self.wasOnLadder = self.onLadder
  self.onLadder = false
  self.groundNSV = {x=0, y=0}
  self.immersedWaterPoints = {false, false, false, false}
end

function Player:finalizeCollision(game, dt)
  --self.vel.x = ((self.pos.x - self.prevpos.x) / dt) + self.ouchVel.x
  --self.vel.y = ((self.pos.y - self.prevpos.y) / dt) + self.ouchVel.y
  self.vel.x = ((self.pos.x - self.prevpos.x) / dt)
  self.vel.y = ((self.pos.y - self.prevpos.y) / dt)
end

function Player:move(dx, dy)
  self.pos.x = self.pos.x + dx
  self.pos.y = self.pos.y + dy
  self.mainHCShape:move(dx, dy)
  self.footHCShape:move(dx, dy)
end

function Player:moveTo(x, y)
  local dx = x - self.pos.x
  local dy = y - self.pos.y
  self.pos.x = x
  self.pos.y = y
  self.prevpos.x = x
  self.prevpos.y = y
  self.vel = { x = 0, y = 0 }
  self.mainHCShape:move(dx, dy)
  self.footHCShape:move(dx, dy)
  self.prevInLiquid = false
  self.inLiquid = false
end

function Player:cull(cx, cy, ww, wh)
  return false
end

function Player:draw(cx, cy) 
  local animIndex = self.animIndex
  local frame = self.anim.frames[animIndex]
  local sx = 1
  local ox = frame.w / 2
  local oy = frame.h
  if self.animFlip then
    sx = -1
  end
  
  local oldR, oldG, oldB, oldA = love.graphics.getColor()
  local a = 255
  local teleportRatio = (TELEPORT_TIME - self.teleportTimer) / TELEPORT_TIME
  if self.teleportMode == 'out' then
    teleportRatio = 1 - teleportRatio
  end
  if self.teleportTimer > 0 then
    a = 255 * teleportRatio
  end
  
  love.graphics.setColor(oldR, oldG, oldB, a)
  love.graphics.draw(frame.texture, frame.quad, 
    self.pos.x+cx, self.pos.y+cy, 0, sx, 1, ox, oy)
  
  if self.teleportTimer > 0 then
    love.graphics.setColor(255, 255, 255, (255-a))
    local w = 128 * teleportRatio
    local h  = self.pos.y + cy
    love.graphics.rectangle("fill", cx + self.teleportLoc.x - w / 2, 0, w, h )
    love.graphics.setColor(241, 156, 183, 255-a)
    love.graphics.rectangle("fill", cx + self.teleportLoc.x - w / 2 - 16, 0, 16, h )
    love.graphics.rectangle("fill", cx + self.teleportLoc.x + w / 2, 0, 16, h )
  end

  if debugDrawCollisionShapes then
    
    love.graphics.setColor(127 + 64, 255 - 64, 127 + 64, 128)
    self.mainHCShape:draw(cx, cy, 'fill')
    love.graphics.setColor(127 + 64, 255 - 64, 127 + 64, 255)
    self.mainHCShape:draw(cx, cy, 'line')
    
    love.graphics.setColor(127 + 64, 255, 127 + 64, 128)
    self.footHCShape:draw(cx, cy, 'fill')
    love.graphics.setColor(127 + 64, 255, 127 + 64, 255)
    self.footHCShape:draw(cx, cy, 'line')
    
    local ogText = "jump"
    if self.onGround then 
      ogText = self.onStuff
    end 
    love.graphics.setColor(0, 128, 0, 255) 
    love.graphics.setFont(fontDebug)
    love.graphics.print(ogText, cx + self.pos.x, cy + self.pos.y - frame.h / 2)
    
    if not (self.groundNSV.x == 0) or not (self.groundNSV.y == 0) then
      love.graphics.setColor(127 + 64, 0, 0, 255) 
      love.graphics.line(
        cx + self.pos.x, cy + self.pos.y, 
        cx + self.pos.x + 1000 * self.groundNSV.x,
        cy + self.pos.y + 1000 * self.groundNSV.y
      )
    end
    if not (self.vel.x == 0) or not (self.vel.y == 0) then
      love.graphics.setColor(0, 127 + 64, 0, 255) 
      love.graphics.line(
        cx + self.pos.x, cy + self.pos.y, 
        cx + self.pos.x + self.vel.x,
        cy + self.pos.y + self.vel.y
      )
    end
    local wps = self:getWaterPoints()
    for idx, wp in pairs(wps) do
      if self.immersedWaterPoints[idx] then
        love.graphics.setColor(128, 128, 255, 255)
      else
        love.graphics.setColor(255, 255, 255, 255)
      end
      
      love.graphics.polygon("fill", 
        wp.x + cx - 3, wp.y + cy - 3,
        wp.x + cx + 3, wp.y + cy - 3,
        wp.x + cx + 3, wp.y + cy + 3,
        wp.x + cx - 3, wp.y + cy + 3)
    end
    
  end
  love.graphics.setColor(oldR, oldG, oldB, oldA)
end

function Player:getPreCollisionVel(dt)
  return {x = (self.pos.x - self.prevpos.x) / dt, y = (self.pos.y - self.prevpos.y) / dt}
end

Player = common_local.class('Player', Player, Object)

return {
	Player = Player,
	newPlayer = newPlayer,
	playerLoadAssets = playerLoadAssets,
  playerUnloadAssets = playerUnloadAssets,
}