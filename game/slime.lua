local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Slime = {}

local function newSlime(...)
	return common_local.instance(Slime, ...)
end

--location is centre
function Slime:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
end

Slime = common_local.class('Slime', Slime, Object)

return {
	Slime = Slime,
	newSlime = newSlime,
}