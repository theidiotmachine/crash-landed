local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Bouncer = {}

local function newBouncer(...)
	return common_local.instance(Bouncer, ...)
end

function Bouncer:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  local bounceUpTileId = tile.properties.bounceupid
  local gid = bounceUpTileId + tile.tilesetObject.firstgid
  local upTile = map.tiles[gid]
  self.up = {
    image = upTile.image,
    quad = upTile.quad
  }
  self.down = {
    tile = tile,
    image = tile.image,
    quad = tile.quad
  }
  self.state = 'down'
end

function Bouncer:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  --if separatingVector.y < 0 then
    --bounce
  if self.state == 'down' then
    local otherObject = otherUser.object
    local otherVel = otherObject:getPreCollisionVel(dt).y
    if otherVel > 0 then 
      otherObject.ouchVel.y = otherObject.ouchVel.y - 8 * otherVel
      self.image = self.up.image
      self.quad = self.up.quad
      self.state = 'up'
      self.upTimer = 1
    end
  end
end

function Bouncer:update(game, dt)
  Object.update(self, dt)
  if self.state == 'up' then
    self.upTimer = self.upTimer - dt
    if self.upTimer < 0 then
      self.state = 'down'
      self.image = self.down.image
      self.quad = self.down.quad
    end
  end
end

Bouncer = common_local.class('Bouncer', Bouncer, Object)


return {
	Bouncer = Bouncer,
	newBouncer = newBouncer,
}