local WorldMap = require 'world.worldMap'
--local Game = require 'game.game'
--local World = require 'world.world'
--local Mode = require 'mode'
local Particles = require 'particles'
local WorldState = require 'worldState'
local Saucer = {}
Saucer.FrameTime = 0.2

local TELEPORT_TIME = 0.4

function Saucer.new(mapLoc, sprites, shadowSprite)
  local pos = WorldMap.getLoc(mapLoc.x, mapLoc.y)
  local island = worldMap.islands[mapLoc.x][mapLoc.y]
  local mode = 'atDest'
  local teleportTimer = 0
  local landDist = 0
  if island.transition == 'saucerBeam' then
    mode = 'teleportUp'
    teleportTimer = TELEPORT_TIME
  else
    mode = 'takeOff'
    landDist = island.featureShadowOffset + 64
  end
        
  return { 
    pos = {x = pos.x, y = pos.y}, 
    origMapLoc = {x = mapLoc.x, y = mapLoc.y},
    destMapLoc = {x = mapLoc.x, y = mapLoc.y},
    --mode = 'atDest',
    mode = mode,
    teleportTimer = teleportTimer,
    landDist = landDist,
    
    shadowMode = 'feature',
    featureShadowOffset = -10,
    speed = 250,
    sprites = sprites, 
    shadowSprite = shadowSprite,
    animCount = Saucer.FrameTime, 
    animFrame = 1,
      
    update = Saucer.update,
    draw = Saucer.draw,
    goTo = Saucer.goTo,
    move = Saucer.move,
    simpleMove = Saucer.simpleMove,
  }
end

local function calcDistSq(l, r)
  local xBit = l.x - r.x
  local yBit = l.y - r.y
  return xBit * xBit + yBit * yBit
end

function Saucer:draw(cx, cy)
  love.graphics.setColor(255, 255, 255, 255)
  local sprite = self.sprites[self.animFrame]
  local shadowOffset = 0
  if self.shadowMode == 'sea' then 
    shadowOffset = 32
  elseif self.shadowMode == 'feature' then
    shadowOffset = self.featureShadowOffset
  end
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(self.shadowSprite.texture, self.shadowSprite.quad, 
    self.pos.x - self.shadowSprite.w/2 + cx, self.pos.y - self.shadowSprite.h/2 + cy + shadowOffset)
  if self.mode == 'teleportDown' or self.mode == 'teleportUp' then
    if self.teleportTimer > 0 then
      local teleportRatio = (TELEPORT_TIME - self.teleportTimer) / TELEPORT_TIME
      if self.mode == 'teleportUp' then
        teleportRatio = 1 - teleportRatio
      end
      a = 255 * teleportRatio
      
      love.graphics.setColor(255, 255, 255, (255-a))
      local w = 16 * teleportRatio
      local h  = 64 + shadowOffset
      love.graphics.rectangle("fill", cx + self.pos.x - w / 2, cy + self.pos.y -64, w, h )
      love.graphics.setColor(241, 156, 183, 255-a)
      love.graphics.rectangle("fill", cx + self.pos.x - w / 2 - 4, cy + self.pos.y - 64, 4, h )
      love.graphics.rectangle("fill", cx + self.pos.x + w / 2, cy + self.pos.y - 64, 4, h )
    end
  end
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(sprite.texture, sprite.quad, 
    self.pos.x - sprite.w/2 + cx, 
    (self.pos.y - sprite.h/2 + cy - 64) + self.landDist
  )
end

function Saucer:goTo(pos)
  self.pos.x = pos.x
  self.pos.y = pos.y
end

function Saucer:move(dx, dy)
  self.pos.x = self.pos.x + dx
  self.pos.y = self.pos.y + dy
end

function Saucer:simpleMove(dest, dt)
  local distSq = calcDistSq(self.pos, dest)
  local atDest = false  
  
  if distSq <= self.speed * self.speed * dt * dt then
    self:goTo(dest)
    atDest = true
  else
    local dist = math.sqrt(distSq)
    local dy = ((dest.y - self.pos.y) / dist) * self.speed * dt
    local dx = ((dest.x - self.pos.x) / dist) * self.speed * dt
    self:move(dx, dy)
  end
  
  local orig = WorldMap.getLoc(self.origMapLoc.x, self.origMapLoc.y)
  local finalDest = WorldMap.getLoc(self.destMapLoc.x, self.destMapLoc.y)
    local newDestDistSq = calcDistSq(self.pos, finalDest)
    local newOrigDistSq = calcDistSq(self.pos, orig)
    local newDist = math.sqrt(math.min(newDestDistSq, newOrigDistSq))
    if newDist > 192/2 then
      self.shadowMode = 'sea'
    elseif newDist > 32 then
      self.shadowMode = 'island'
    else
      self.shadowMode = 'feature'
      local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
      if newDestDistSq > newOrigDistSq then
        island = worldMap.islands[self.origMapLoc.x][self.origMapLoc.y]
      end
      self.featureShadowOffset = island.featureShadowOffset
    end 
    
  return atDest
end

function Saucer:update(world, dt)
  self.animCount = self.animCount - dt
  if self.animCount <= 0 then
    self.animCount = Saucer.FrameTime
    self.animFrame = self.animFrame + 1
    if self.animFrame > #self.sprites then
      self.animFrame = 1
    end
  end
  
  if self.mode == 'teleportDown' or self.mode == 'teleportUp' then
    if self.teleportTimer > 0 then
      self.teleportTimer = self.teleportTimer - dt
    end
    if self.teleportTimer <= 0 then
      self.teleportTimer = 0        
      if self.mode == 'teleportDown' then
        local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
        --world.mode.toGame(island.level, island.state, "eng", island.canQuitToWorld, island.bgm)
        world.mode.toGame(island.worldStateName, 'eng')
      end
      self.mode = 'atDest' 
    end
    return
  end  
  
  if self.mode == 'land' then
    local dist = 64 + self.featureShadowOffset
    if self.landDist <= dist then
      self.landDist = self.landDist + (dt * 150)
    end
    if self.landDist > dist then
      self.landDist = dist
      local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
--      world.mode.toGame(island.level, island.state, "eng", island.canQuitToWorld, island.bgm)
      world.mode.toGame(island.worldStateName, 'eng')
      self.mode = 'atDest' 
    end
    return
  end
  
  if self.mode == 'takeOff' then
    if self.landDist > 0 then
      self.landDist = self.landDist - (dt * 150)
    end
    if self.landDist <= 0 then
      self.landDist = 0
      self.mode = 'atDest' 
    end
    return
  end
  
  if self.mode == 'bumpOff' then
    local atDest = self:simpleMove(self.bumpOffLoc, dt)
    if atDest then 
      self.mode = 'bumpBack' 
      local pPos = { 
        x = (self.pos.x + self.bpos.x)/2,  
        y = (self.pos.y -64 + self.bpos.y)/2
      }
      Particles.createNewSmallSparkSet(pPos)
    end
    return
  end
  
  if self.mode == 'bumpBack' then
    local atDest = self:simpleMove(self.bumpBackLoc, dt)
    if atDest then 
      self.mode = 'atDest' 
    end
    return
  end
    
  local dest = WorldMap.getLoc(self.destMapLoc.x, self.destMapLoc.y)
  local atDest = self:simpleMove(dest, dt)
  
  if atDest then
    self.origMapLoc.x = self.destMapLoc.x
    self.origMapLoc.y = self.destMapLoc.y
    self.mode = 'atDest'
    self.shadowMode = 'feature'
    local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
    self.featureShadowOffset = island.featureShadowOffset
    WorldState.setSaucerLoc(self.origMapLoc)
  else
    self.mode = 'moving'
  end
      
  if atDest then
      local proposedDest = {x=self.destMapLoc.x, y=self.destMapLoc.y}
      if love.keyboard.isDown('w') or love.keyboard.isDown('up') then
        proposedDest.y = proposedDest.y - 1
      elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then
        proposedDest.x = proposedDest.x - 1
      elseif love.keyboard.isDown('s') or love.keyboard.isDown('down') then
        proposedDest.y = proposedDest.y + 1
      elseif love.keyboard.isDown('d') or love.keyboard.isDown('right') then
        proposedDest.x = proposedDest.x + 1
      elseif love.keyboard.isDown(' ') or love.keyboard.isDown('return') then
        local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
        local islandData = WorldState.data.islands[island.worldStateName]
        if islandData.level then
          if islandData.transition == 'saucerBeam' then
            self.mode = 'teleportDown'
            self.teleportTimer = TELEPORT_TIME
          else
            self.mode = 'land'
            self.landDist = 0
          end
        end
      end
      local destCode, bx, by = worldMap:isValidDest(proposedDest.x, proposedDest.y)
      if destCode == 'yes' then
        self.destMapLoc = proposedDest
      elseif destCode == 'barrier' then
        self.mode = 'bumpOff'
        self.bumpOffLoc = { 
          x = self.pos.x + (proposedDest.x - self.destMapLoc.x) * 128,
          y = self.pos.y + (proposedDest.y - self.destMapLoc.y) * 128
        }
        self.bumpBackLoc = {
          x = self.pos.x,
          y = self.pos.y
        }
        self.bpos = { x = bx, y = by }
      end
    
  end
  
  --if self.destPos.x ~= self.pos.x then
end



return Saucer