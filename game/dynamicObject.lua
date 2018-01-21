local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Collisions = require 'game.collisions'
local Particles = require 'particles'

local DynamicObject = {}

function DynamicObject:initState(game)
  self.vel = {x=0, y=0}
  self.prevpos = {x=self.pos.x, y=self.pos.y}
  self.prevInLiquid = false
  self.inLiquid = false
end

function DynamicObject:init(game, object, tile, drawLayer, map)
  Object.init(self, game, object, tile, drawLayer, map)
  for _, hcShape in pairs(self.hcShapes) do
    Collisions.registerObject(hcShape)
  end
  self:initState(game)
end

function DynamicObject:destroy(game)
  Object.destroy(self, game)
  for _, hcShape in pairs(self.hcShapes) do
    Collisions.unregisterObject(hcShape)
  end
end

function DynamicObject:beginDynamics()
end

function DynamicObject:move(dx, dy)
  self.pos.x = self.pos.x + dx
  self.pos.y = self.pos.y + dy
  for _, hcShape in pairs(self.hcShapes) do
    hcShape:move(dx, dy)
  end
end

function DynamicObject:moveTo(x, y)
  local dx = x - self.pos.x
  local dy = y - self.pos.y
  self.pos.x = x
  self.pos.y = y
  self:initState(game)
  for _, hcShape in pairs(self.hcShapes) do
    hcShape:move(dx, dy)
  end
end

function DynamicObject:cull(cx, cy, ww, wh)
  return Object.cull(self, cx, cy, ww, wh)
end

function DynamicObject:draw(cx, cy)
  Object.draw(self, cx, cy)
  if debugDrawCollisionShapes then
    local oldR, oldG, oldB, oldA = love.graphics.getColor()
    if not (self.vel.x == 0) or not (self.vel.y == 0) then
      love.graphics.setColor(0, 127 + 64, 0, 255) 
      love.graphics.line(
        cx + self.pos.x, cy + self.pos.y, 
        cx + self.pos.x + self.vel.x,
        cy + self.pos.y + self.vel.y
      )
    end
    if self.getWaterPoints then
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
end

function DynamicObject:update(game, dt)
  Object.update(self, game, dt)
  self.prevInLiquid = self.inLiquid
  self.inLiquid = false
  
  self.prevpos.x = self.pos.x
  self.prevpos.y = self.pos.y
end

function DynamicObject:beginCollision(dt)
  if self.waterPoints then
    for i, waterPoint in ipairs(self.waterPoints) do
      self.immersedWaterPoints[i] = false
    end
  end
end

function DynamicObject:getPreCollisionVel(dt)
  return {x = (self.pos.x - self.prevpos.x) / dt, y = (self.pos.y - self.prevpos.y) / dt}
end

function DynamicObject:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "ground" then
    if otherUser.stuff == "water" and not self.prevInLiquid then
      Particles.createNewSplashSet(self.pos, self.vel.y)
    end
  end
end

function DynamicObject:resolveCollision(game, dt, resolutionVector)
  self:move(resolutionVector.x, resolutionVector.y)
end

function DynamicObject:finalizeCollision(game, dt)
  self.vel.x = ((self.pos.x - self.prevpos.x) / dt)
  self.vel.y = ((self.pos.y - self.prevpos.y) / dt)
end

DynamicObject = common_local.class('DynamicObject', DynamicObject, Object)

return {
	DynamicObject = DynamicObject,
	newDynamicObject = newDynamicObject,
  move = DynamicObject.move,
  moveTo = DynamicObject.moveTo,
  cull = DynamicObject.cull,
  draw = DynamicObject.draw,
  init = DynamicObject.init,
  getPreCollisionVel = DynamicObject.getPreCollisionVel,
  beginCollision = DynamicObject.beginCollision,
  beginDynamics = DynamicObject.beginDynamics,
  collision = DynamicObject.collision,
  destroy = DynamicObject.destroy,
  update = DynamicObject.update,
  finalizeCollision = DynamicObject.finalizeCollision,
  resolveCollision = DynamicObject.resolveCollision,
  reset = DynamicObject.reset,
  initState = DynamicObject.initState,
}