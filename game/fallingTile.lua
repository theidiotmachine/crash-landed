local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local DynamicObject = require 'game.dynamicObject'
local Flasher = require 'game.flasher'

local FallingTile = {}

local function newFallingTile(...)
	return common_local.instance(FallingTile, ...)
end

local MAX_FALLING_TILE_FLASHING_TIME = 1.5

function FallingTile:initState(game)
  DynamicObject.initState(self, game)
  self.status = 'static'
end

function FallingTile:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  
  local flashTileId = tile.properties.flashId
  local gid = flashTileId + tile.tilesetObject.firstgid
  local flashTile = map.tiles[gid]
  self.flasher = Flasher.create(flashTile, tile)
  
  self.resetLoc = { x = self.pos.x, y = self.pos.y }
  self:initState(game)
end

function FallingTile:update(game, dt)
  if self.resetRequest then
    self.flasher:reset()
    self:moveTo(self.resetRequest.x, self.resetRequest.y)
    self:initState(game)
     self.vel.x = 0
    self.vel.y = 0
    self.fallingTimer = MAX_FALLING_TILE_FLASHING_TIME
    self.resetRequest = nil
  end
  
  if self.status == 'static' then
    return
  end
  
  if self.status == 'flashing' then
    local fall = self.flasher:update(dt)
    if fall then
      self.status = 'falling'
      self.fallingTimer = MAX_FALLING_TILE_FLASHING_TIME
    end
    return
  end
  
  --falling
  self.fallingTimer = self.fallingTimer - dt
  if self.fallingTimer < 0 then
    self.vel.x = 0
    self.vel.y = 0
    self:moveTo(self.resetLoc.x, self.resetLoc.y)
    self.status = 'static'
    self.flasher:reset()
    return
  end
  DynamicObject.update(self, game, dt)
  
  self.vel.y = self.vel.y + 500 * dt
  
  local dx = self.vel.x * dt
  local dy = self.vel.y * dt
  DynamicObject.move(self, dx, dy)
end

function FallingTile:receiveResetRequest(game)
  self.resetRequest = { x = self.resetLoc.x, y = self.resetLoc.y }
end

function FallingTile:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if self.status ~= 'static' then
    return
  end
  
  self.flasher:setOff()
  self.status = 'flashing'
end

function FallingTile:draw(cx, cy)
  if self.status == 'flashing' then
    self.flasher:draw(cx, cy, self.pos.x, self.pos.y, self.r, self.sx, self.sy)
  elseif self.status == 'falling' then
    Object.draw(self, cx, cy, 255 * (self.fallingTimer - MAX_FALLING_TILE_FLASHING_TIME)/MAX_FALLING_TILE_FLASHING_TIME)
  else
    Object.draw(self, cx, cy)
  end
end

FallingTile = common_local.class('FallingTile', FallingTile, DynamicObject)

return {
  FallingTile = FallingTile,
  newFallingTile = newFallingTile
}