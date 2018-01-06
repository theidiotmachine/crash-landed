local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Spikes = {}

local function newSpikes(...)
	return common_local.instance(Spikes, ...)
end

--location is centre
function Spikes:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
end

Spikes = common_local.class('Spikes', Spikes, Object)

return {
	Spikes = Spikes,
	newSpikes = newSpikes,
}