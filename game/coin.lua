local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Coin = {}

--location is centre
function Coin:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
end

function Coin:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "player" then
    Object.destroy(self, game)
  end
end

local function newCoin(...)
	return common_local.instance(Coin, ...)
end

Coin = common_local.class('Coin', Coin, Object)

return {
	Coin = Coin,
	newCoin = newCoin,
  onCollision = onCollision
}