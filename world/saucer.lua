local WorldMap = require 'world.worldMap'
--local Game = require 'game.game'
--local World = require 'world.world'
--local Mode = require 'mode'

local Saucer = {}
Saucer.FrameTime = 0.2

function Saucer.new(mapLoc, sprites, shadowSprite)
  local pos = WorldMap.getLoc(mapLoc.x, mapLoc.y)
  return { 
    pos = {x = pos.x, y = pos.y}, 
    origMapLoc = {x = mapLoc.x, y = mapLoc.y},
    destMapLoc = {x = mapLoc.x, y = mapLoc.y},
    mode = 'atDest',
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
  love.graphics.draw(self.shadowSprite.texture, self.shadowSprite.quad, 
    self.pos.x - self.shadowSprite.w/2 + cx, self.pos.y - self.shadowSprite.h/2 + cy + shadowOffset)
  love.graphics.draw(sprite.texture, sprite.quad, self.pos.x - sprite.w/2 + cx, self.pos.y - sprite.h/2 + cy - 64)
end

function Saucer:goTo(pos)
  self.pos.x = pos.x
  self.pos.y = pos.y
end

function Saucer:move(dx, dy)
  self.pos.x = self.pos.x + dx
  self.pos.y = self.pos.y + dy
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
  
  local dest = WorldMap.getLoc(self.destMapLoc.x, self.destMapLoc.y)
  local distSq = calcDistSq(self.pos, dest)
  local atDest = false  
  
  if distSq <= self.speed * self.speed * dt * dt then
    self:goTo(dest)
    atDest = true
    self.origMapLoc.x = self.destMapLoc.x
    self.origMapLoc.y = self.destMapLoc.y
    self.mode = 'atDest'
    self.shadowMode = 'feature'
    local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
    self.featureShadowOffset = island.featureShadowOffset
  else
    local dist = math.sqrt(distSq)
    local dy = ((dest.y - self.pos.y) / dist) * self.speed * dt
    local dx = ((dest.x - self.pos.x) / dist) * self.speed * dt
    self:move(dx, dy)
    self.mode = 'moving'
    
    --shadow height
    local orig = WorldMap.getLoc(self.origMapLoc.x, self.origMapLoc.y)
    local newDestDistSq = calcDistSq(self.pos, dest)
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
    elseif love.keyboard.isDown(' ') then
      local island = worldMap.islands[self.destMapLoc.x][self.destMapLoc.y]
      if island.level then
        world.mode.toGame(island.level, 
          island.state, "eng")
      end
    end
    if worldMap:isValidDest(proposedDest.x, proposedDest.y) then
      self.destMapLoc =  proposedDest
    end
  end
  
  --if self.destPos.x ~= self.pos.x then
end



return Saucer