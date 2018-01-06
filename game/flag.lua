local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Flag = {}

local function newFlag(...)
	return common_local.instance(Flag, ...)
end

function Flag:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  local downTileId = tile.properties.downTileid
  local gid = downTileId + tile.tilesetObject.firstgid
  local downTile = map.tiles[gid]
  self.down = {
    image = downTile.image,
    quad = downTile.quad
    }
end

function Flag:draw(cx, cy)
  Object.draw(self, cx, cy)
end

function Flag:update(game, dt)
  Object.update(self, game, dt)
end

function Flag:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "player" then
    self.animation = nil
    self.image = self.down.image
    self.quad = self.down.quad
    --we have an origin at the center of the tile; the player has an origin at the tile base. So adjust
    game.restartPoint = { x = self.pos.x, y = self.pos.y + self.tilesize.y / 2 }
  end
  
end

Flag = common_local.class('Flag', Flag, Object)

return {
	Flag = Flag,
	newFlag = newFlag,
}