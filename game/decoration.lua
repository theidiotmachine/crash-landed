local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Decoration = {}

local function newDecoration(...)
	return common_local.instance(Decoration, ...)
end

--location is centre
function Decoration:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
end

Decoration = common_local.class('Decoration', Decoration, Object)

return {
	Decoration = Decoration,
	newDecoration = newDecoration,
}