local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Collisions = require 'game.collisions'

local Conveyer = {}

local function newConveyer(...)
	return common_local.instance(Conveyer, ...)
end

--location is centre
function Conveyer:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
end

function Conveyer:getPreCollisionVel(dt)
  if self.properties.moving == "off" then
    return {x = 0, y = 0}
  elseif self.properties.moving == "left" then
    return {x = -200, y = 0}
  else
    return {x = 200, y = 0}
  end
end

Conveyer = common_local.class('Conveyer', Conveyer, Object)

return {
	Conveyer = Conveyer,
	newConveyer = newConveyer,
  init = Conveyer.init
}