local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Particles = require 'particles'
local Explosions = require 'game.explosions'
local Flasher = require 'game.flasher'
local Mine = {}


local function newMine(...)
	return common_local.instance(Mine, ...)
end

function Mine:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  
  local flashTileId = tile.properties.flashid
  local gid = flashTileId + tile.tilesetObject.firstgid
  local flashTile = map.tiles[gid]
  self.flasher = Flasher.create(flashTile, self.animation[1])
end

function Mine:update(game, dt)
  Object.update(self, game, dt)
  local explode = self.flasher:update(dt)
  if explode then
    --boom
    Explosions.largeCircular(game, dt, self)
    Object.destroy(self, game)
  end
end

function Mine:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  self.flasher:setOff()
end

function Mine:takeDamage(game, dt, damageType, amount, separatingVector, source)
  if damageType == 'explosion' then
    Explosions.largeCircular(game, dt, self)
    Object.destroy(self, game)
  else
    self.flasher:setOff()
  end
end

function Mine:draw(cx, cy)
  if self.flasher.flashing then
    self.flasher:draw(cx, cy, self.pos.x, self.pos.y, self.r, self.sx, self.sy)
  else
    Object.draw(self, cx, cy)
  end
end

Mine = common_local.class('Mine', Mine, Object)

return {
	Mine = Mine,
	newMine = newMine,
}