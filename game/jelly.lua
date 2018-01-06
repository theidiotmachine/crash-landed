local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local DynamicObject = require 'game.dynamicObject'
local Collisions = require 'game.collisions'

local Jelly = {}

local function newJelly(...)
	return common_local.instance(Jelly, ...)
end

function Jelly:initState(game)
  DynamicObject.initState(self, game)
  self.waterPoints = {{x=0, y=0}}
  self.immersedWaterPoints = {false}
  self.direction = -1
end

--location is centre
function Jelly:init(game, object, tile, map)
  DynamicObject.init(self, game, object, tile, 1, map)
  self.buoyancyPerWaterPoint = -1.597
  self:initState(game)
  self.resetLoc = { x = self.pos.x, y = self.pos.y }
end

function Jelly:getWaterPoints()
  local out = {}
  for _, waterPoint in pairs(self.waterPoints) do
    table.insert(out, {x=self.pos.x + waterPoint.x, y=self.pos.y + waterPoint.y})
  end
  return out
end

function Jelly:update(game, dt)
  if self.resetRequest then
    self:moveTo(self.resetRequest.x, self.resetRequest.y)
    self:initState(game)
    self.resetRequest = nil
    --self.justReset = 0
    --if self.vel.y < 0 then
        --error "hggthth"
      --end
    return
  end
  
  DynamicObject.update(self, game, dt)
  
  if self.prevInLiquid == false then
    self.direction = 1
  end
   
  self.vel.y = self.vel.y + 400 * dt * self.direction
  
  if self.vel.x > 0 then
    self.vel.x = self.vel.x - 300 * dt
  elseif self.vel.x < 0 then
    self.vel.x = self.vel.x + 300 * dt
  end
  
  self.vel.y = self.vel.y + 400 * dt
  
  if self.vel.y > 400 then
    self.vel.y = 400
  elseif self.vel.y < -400 then
    self.vel.y = -400 
  end
  
  if self.vel.x > 200 then
    self.vel.x = 200
  elseif self.vel.x < -200 then
    self.vel.x = -200 
  end
  
  --[[
  if self.justReset then
    if self.justReset == 0 then
      self.justReset = nil
      if self.direction ~= -1 then
        error("poop")
      end
      if self.vel.y < 0 then
        error "hggh"
      end
    else
      self.justReset = self.justReset - 1
    end
  end
  ]]--
  
  local dx = self.vel.x * dt
  local dy = self.vel.y * dt
  DynamicObject.move(self, dx, dy)
end

function Jelly:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  DynamicObject.collision(self, game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  
  if (otherType == "ground" and otherUser.stuff ~= "water") or (otherType ~= "ground" and otherUser.properties.colType ~= "none") then
    if separatingVector.y < 0 then
      self.direction = -1
    elseif separatingVector.y > 0 then
      self.direction = 1
    end
  end
end

function Jelly:sendResetRequest(game)
  self.resetRequest = { x = self.resetLoc.x, y = self.resetLoc.y }
end

Jelly = common_local.class('Jelly', Jelly, DynamicObject)

return {
	Jelly = Jelly,
	newJelly = newJelly,
  init = Jelly.init
}