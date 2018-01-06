local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Hud = require 'hud'

local Sign = {}

local function newSign(...)
	return common_local.instance(Sign, ...)
end

--location is centre
function Sign:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  self.signText = map.text[self.properties.signText]
end

function Sign:draw(cx, cy)
  Object.draw(self, cx, cy)
end

function Sign:update(game, dt)
  Object.update(self, game, dt)
end

function Sign:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "player" then
    Hud.inSign(self.properties.signType, self.signText or "Your advert here")
  end
end

Sign = common_local.class('Sign', Sign, Object)

return {
	Sign = Sign,
	newSign = newSign,
  collision = collision
}