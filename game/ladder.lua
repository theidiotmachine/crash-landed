local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Ladder = {}

local function newLadder(...)
	return common_local.instance(Ladder, ...)
end

--location is centre
function Ladder:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
end

function Ladder:draw(cx, cy)
  Object.draw(self, cx, cy)
end

function Ladder:update(game, dt)
  Object.update(self, dt)
end

function Ladder:collision(game, dt, selfCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "player" then
    --otherUser:inLadder()
    --otherUser.onLadder = true
    --Hud.inLadder(self.properties.LadderType, self.properties.LadderText or "Your advert here")
  end
end

Ladder = common_local.class('Ladder', Ladder, Object)

return {
	Ladder = Ladder,
	newLadder = newLadder,
  collision = collision
}