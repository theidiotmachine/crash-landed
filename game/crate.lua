local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local DynamicObject = require 'game.dynamicObject'
local Explosions = require 'game.explosions'
local Sound = require 'sound'

local Crate = {}

local function newCrate(...)
	return common_local.instance(Crate, ...)
end

function Crate:initState(game)
  DynamicObject.initState(self, game)
  self.waterPoints = {{x=0, y=0}}
  self.waterPoints = {{x=0, y=-50}, {x=0, y=-25}, {x=0, y=25}, {x=0, y=50}}
  self.immersedWaterPoints = {false, false, false, false}
end

function Crate:init(game, object, tile, map)
  DynamicObject.init(self, game, object, tile, 1, map)
  self:initState(game)
  self.buoyancyPerWaterPoint = -3/4
  self.resetLoc = { x = self.pos.x, y = self.pos.y }
end

function Crate:getWaterPoints()
  local out = {}
  
  for _, waterPoint in pairs(self.waterPoints) do
    table.insert(out, {x=self.pos.x + waterPoint.x, y=self.pos.y + waterPoint.y})
  end
  return out
end

function Crate:update(game, dt)
  if self.resetRequest then
    self:moveTo(self.resetRequest.x, self.resetRequest.y)
    self:initState(game)
    self.resetRequest = nil
  end
  
  DynamicObject.update(self, game, dt)
  
  self.vel.y = self.vel.y + 500 * dt
  
  local dx = self.vel.x * dt
  local dy = self.vel.y * dt
  DynamicObject.move(self, dx, dy)
end

function Crate:frictionMultiplier()
  if self.inSlime or self.wasInSlime then
    return 0
  else
    return 0.75
  end
end

function Crate:beginCollision(dt)
  DynamicObject.beginCollision(self, dt)
  self.wasInSlime = self.inSlime
  self.inSlime = false
end

function Crate:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  DynamicObject.collision(self, game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)

  if otherType == "slime" then
    self.inSlime = true
  end
end

function Crate:takeDamage(game, dt, damageType, amount, separatingVector, source)
  DynamicObject.takeDamage(self, game, dt, damageType, amount, separatingVector, source)
  local crateType = self.properties.crateType
  if crateType and crateType == 'fuel' then
    Explosions.largeCircular(game, dt, self)
    DynamicObject.destroy(self, game)
  end
end

function Crate:receiveResetRequest(game)
  self.resetRequest = { x = self.resetLoc.x, y = self.resetLoc.y }
end

function Crate:clang(game, vel)
  local velsz = math.sqrt(vel.x * vel.x + vel.y * vel.y)
  local vol = math.min(velsz / 700, 1)
  if vol > 0.2 then
    local crateType = self.properties.crateType
    if crateType and (crateType == 'fuel' or crateType == 'metal') then
      Sound.playFXAtLoc("assets/sound/metalclang1.ogg", self.pos, vol)
    else
      Sound.playFXAtLoc("assets/sound/woodclang1.ogg", self.pos, vol)
    end
  end
end

Crate = common_local.class('Crate', Crate, DynamicObject)

return {
	Crate = Crate,
	newCrate = newCrate,
  init = Crate.init
}