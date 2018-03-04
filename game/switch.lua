local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
--local HC = require 'HC'

local Switch = {}

local function newSwitch(...)
	return common_local.instance(Switch, ...)
end

function Switch:setUpDirection(game, direction, tile)
  local tileId = tile.properties[direction]
  local gid = tileId + tile.tilesetObject.firstgid
  local thisTile = game.map.tiles[gid]
    self[direction] = {
      tile = thisTile,
      image = thisTile.image,
      quad = thisTile.quad
    }
end


--location is centre
function Switch:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  self.direction = self.properties.direction
  if tile.properties.left then
    self:setUpDirection(game, "left", tile)
  end
  
  if tile.properties.centre then
    self:setUpDirection(game, "centre", tile)
  end
  
  if tile.properties.right then
    self:setUpDirection(game, "right", tile)
  end
  
  self[self.direction] = {
    tile = tile,
    image = tile.image,
    quad = tile.quad
  }
end

function Switch:draw(cx, cy)
  Object.draw(self, cx, cy)
end

function Switch:update(game, dt)
  Object.update(self, dt)
end

function Switch:change(game, newDirection)
  self.direction = newDirection
  self.image = self[newDirection].image
  self.quad = self[newDirection].quad
  for _, hcShape in pairs(self.hcShapes) do
    game.HC.remove(hcShape)
  end
  Object.initHCShapeFromTile(self, game, self[newDirection].tile, "switch", self.pos.x, self.pos.y)
  if self.script and self.script[newDirection] then
    self.script[newDirection](self, game)
  end
--  love.audio.play("assets/sound/switch1.ogg", 'static', false, 'fx')
end

function Switch:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if selfCollisionObject.user.subType == "switch" then
    if separatingVector.x < 0 and otherUser.object:getPreCollisionVel(dt).x < 0 then
      if self.direction == "right" then
        self.queuedDirection = "left"
      end
    end
    
    if separatingVector.x > 0 and otherUser.object:getPreCollisionVel(dt).x > 0 then
      if self.direction == "left" then
        self.queuedDirection = "right"
      end
    end
  end
end

function Switch:resolveCollision(game, dt, resolutionVector)
  if self.queuedDirection then
    self:change(game, self.queuedDirection)
    self.queuedDirection = nil
  end
  
end

Switch = common_local.class('Switch', Switch, Object)

return {
	Switch = Switch,
	newSwitch = newSwitch,
}