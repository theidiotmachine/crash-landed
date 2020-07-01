local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local CollisionArea = {}

local function newCollisionArea(...)
	return common_local.instance(CollisionArea, ...)
end

function CollisionArea:init(game, object, tile, map)
  local x = object.x + tile.width/2
  local y = object.y - tile.height/2
  
  Object.register(self, object, tile, map)

  local properties = {}
  for k, v in pairs(tile.properties) do
    properties[k] = v
  end
  for k, v in pairs(object.properties) do
    properties[k] = v
  end
  
  self.properties = properties
  self.properties.colType = "none"
  self.hcShapes = { Object.getHCShapeFromObjectGroup(self, game, {width=0, height=0}, object, "none", 0, 0) }

  Object.initLoc(self, x, y, 2)
end

function CollisionArea:cull(cx, cy, ww, wh)
  return false
end

function CollisionArea:draw(cx, cy)
  if debugDrawCollisionShapes then
    local oldR, oldG, oldB, oldA = love.graphics.getColor()
    for _, hcShape in pairs(self.hcShapes) do 
      love.graphics.setColor(127/255, 1, 127/255, 128/255)
      hcShape:draw(cx, cy, 'fill')
      love.graphics.setColor(127 /255, 1, 127/255, 1)
      hcShape:draw(cx, cy, 'line')
    end
    love.graphics.setColor(oldR, oldG, oldB, oldA)
  end
end

function CollisionArea:update(game, dt)
  Object.update(self, game, dt)
end

function CollisionArea:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if self.script and self.script.collide then
    self.script.collide(self, game, otherUser.object, separatingVector)
  end
end

CollisionArea = common_local.class('CollisionArea', CollisionArea, Object)

return {
	CollisionArea = CollisionArea,
	newCollisionArea = newCollisionArea,
}