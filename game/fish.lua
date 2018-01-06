local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local DynamicObject = require 'game.dynamicObject'
local Collisions = require 'game.collisions'

local Fish = {}

local function newFish(...)
	return common_local.instance(Fish, ...)
end

function Fish:initState(game)
  DynamicObject.initState(self, game)
  self.waterPoints = {{x=0, y=0}}
  self.immersedWaterPoints = {false}
  if self.direction and self.direction ~= -1 then
    for _, hcShape in pairs(self.hcShapes) do
      hcShape:flipX()
    end
  end
  self.direction = -1
  self.vel.x = -300
end

--location is centre
function Fish:init(game, object, tile, map)
  DynamicObject.init(self, game, object, tile, 1, map)
  self.buoyancyPerWaterPoint = -1.597
  self.resetLoc = { x = self.pos.x, y = self.pos.y }
end

function Fish:getWaterPoints()
  local out = {}
  
  for _, waterPoint in pairs(self.waterPoints) do
    table.insert(out, {x=self.pos.x + waterPoint.x, y=self.pos.y + waterPoint.y})
  end
  return out
end

function Fish:update(game, dt)
  if self.resetRequest then
    self:moveTo(self.resetRequest.x, self.resetRequest.y)
    self:initState(game)
    self.resetRequest = nil
    return
  end
  
  DynamicObject.update(self, game, dt)
  
  self.vel.x = self.vel.x + 500 * dt * self.direction
  if self.vel.y > 0 then
    self.vel.y = self.vel.y - 300 * dt
  elseif self.vel.y < 0 then
    self.vel.y = self.vel.y + 300 * dt
  end
  
  self.vel.y = self.vel.y + 400 * dt
  
  if self.vel.x > 300 then
    self.vel.x = 300
  elseif self.vel.x < -300 then
    self.vel.x = -300 
  end
  
  if self.vel.y > 100 then
    self.vel.y = 100
  elseif self.vel.y < -100 then
    self.vel.y = -100 
  end
  
  local dx = self.vel.x * dt
  local dy = self.vel.y * dt
  DynamicObject.move(self, dx, dy)
end

function Fish:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  DynamicObject.collision(self, game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  local flipped = false
  if (otherType == "ground" and otherUser.stuff ~= "water") or (otherType ~= "ground" and otherUser.properties.colType ~= "none") then
    if separatingVector.x < 0 then
      if self.direction ~= -1 then
        self.direction = -1
        flipped = true
      end
    elseif separatingVector.x > 0 then
      if self.direction ~= 1 then
        self.direction = 1
        flipped = true
      end
    end
  end
  if flipped then
    for _, hcShape in pairs(self.hcShapes) do
      hcShape:flipX()
    end
  end  
end


function Fish:draw(cx, cy)
  if self.direction == 1 then
    self.sx = -1
  else 
    self.sx = 1
  end
  DynamicObject.draw(self, cx, cy)
end

function Fish:sendResetRequest(game)
  self.resetRequest = { x = self.resetLoc.x, y = self.resetLoc.y }
end

Fish = common_local.class('Fish', Fish, DynamicObject)

return {
	Fish = Fish,
	newFish = newFish,
  init = Fish.init
}