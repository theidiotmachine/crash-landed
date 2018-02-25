local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Particles = require 'particles'
local Explosions = require 'game.explosions'
local Mine = {}


local function newMine(...)
	return common_local.instance(Mine, ...)
end

function Mine:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  
  local flashTileId = tile.properties.flashid
  local gid = flashTileId + tile.tilesetObject.firstgid
  local flashTile = map.tiles[gid]
  self.flashTiles = {
    on = {
      image = flashTile.image,
      quad = flashTile.quad
    },
    off = {
      image = self.animation[1].image,
      quad = self.animation[1].quad
    }
  }
  
  self.flashing = false
end

function Mine:update(game, dt)
  Object.update(self, game, dt)
  if self.flashing then
    self.flashTimer = self.flashTimer - dt
    if self.flashTimer < 0 then
      --change state
      if self.flashState == "on" then
        self.flashState = "off"
        self.flashTimer = self.flashTimers[self.flashState]
        self.image = self.flashTiles[self.flashState].image
        self.quad = self.flashTiles[self.flashState].quad
      else
        self.flashTimers.off = self.flashTimers.off - 0.1
        if self.flashTimers.off <= 0 then
          --boom
          Explosions.largeCircular(game, dt, self)
          Object.destroy(self, game)
        else
          self.flashState = "on"
          self.flashTimer = self.flashTimers[self.flashState]
          self.image = self.flashTiles[self.flashState].image
          self.quad = self.flashTiles[self.flashState].quad
        end
      end
    end
  end
end

function Mine:setoff(flashTimerOff)
  flashTimerOff = flashTimerOff or 0.5
  if self.flashing == false then
    self.flashing = true
    self.flashTimers = { on = 0.1, off = flashTimerOff }
    self.flashState = "on"
    self.flashTimer = self.flashTimers[self.flashState]
    self.image = self.flashTiles[self.flashState].image
    self.quad = self.flashTiles[self.flashState].quad
    self.animation = nil
  end
end

function Mine:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  self:setoff()
end

function Mine:takeDamage(game, dt, damageType, amount, separatingVector, source)
  if damageType == 'explosion' then
    Explosions.largeCircular(game, dt, self)
    Object.destroy(self, game)
  else
    self:setoff()
  end
end

Mine = common_local.class('Mine', Mine, Object)

return {
	Mine = Mine,
	newMine = newMine,
}