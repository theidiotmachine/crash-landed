local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Gem = {}

--location is centre
function Gem:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  if not game.state.gems[self.properties.color] then
    game.state.gems[self.properties.color] = false
  elseif game.state.gems[self.properties.color] == true then
    Object.destroy(self, game)
  end
end

function Gem:update(game, dt)
end

function Gem:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "player" then
    Object.destroy(self, game)
  end
end

local function newGem(...)
	return common_local.instance(Gem, ...)
end

Gem = common_local.class('Gem', Gem, Object)

return {
	Gem = Gem,
	newGem = newGem,
}