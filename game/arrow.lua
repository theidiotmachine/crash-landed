local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Arrow = {}

local function newArrow(...)
	return common_local.instance(Arrow, ...)
end

function Arrow:setUpState(game, state, tile)
    local tileId = tile.properties[state]
    local gid = tileId + tile.tilesetObject.firstgid
    local thisTile = game.map.tiles[gid]
    self[state] = {
      tile = thisTile,
      image = thisTile.image,
      quad = thisTile.quad
    }
  end

  
function Arrow:init(game, object, tile, map)
    Object.init(self, game, object, tile, 1, map)
    self.state = self.properties.state

    if tile.properties.off then
        self:setUpState(game, "off", tile)
    end

    if tile.properties.on then
        self:setUpState(game, "on", tile)
    end

    self[self.state] = {
        tile = tile,
        image = tile.image,
        quad = tile.quad
    }
end
  
function Arrow:draw(cx, cy)
    Object.draw(self, cx, cy)
end
  
function Arrow:update(game, dt)
    Object.update(self, game, dt)
end
  
function Arrow:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
end

function Arrow:change(newState)
    if self.state ~= newState then
        self.state = newState
        if self[newState] then
            self.image = self[newState].image
            self.quad = self[newState].quad
        end
    end
end

Arrow = common_local.class('Arrow', Arrow, Object)

return {
	Arrow = Arrow,
	newArrow = newArrow,
    collision = collision
}