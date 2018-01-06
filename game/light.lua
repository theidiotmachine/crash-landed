local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Flares = require 'game.flares'

local Light = {}

local function newLight(...)
	return common_local.instance(Light, ...)
end

function Light:calcA()
  return (1 + math.sin(self.rot)) * 128
end

function Light:setUpLightType(game, lightType, tile)
  local tileId = tile.properties[lightType]
  local gid = tileId + tile.tilesetObject.firstgid
  local thisTile = game.map.tiles[gid]
  self[lightType] = {
    tile = thisTile,
    image = thisTile.image,
    quad = thisTile.quad
  }
end


function Light:setFlare()
  if self.flare then
    Flares.destroy(self.flare)
  end
  self.rot = math.random(2 * math.pi)
  if self.lightType == "red" or self.lightType == "blue" then
    local flareX = self.pos.x-self.tilesize.x/2
    local flareY = self.pos.y-self.tilesize.y/2 + self.properties.lightY
    self.flare = Flares.create(flareX, flareY, self.lightType, self:calcA())
  end
end

--location is centre
function Light:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  self.lightType = self.properties.lightType
  if tile.properties.red then
    self:setUpLightType(game, "red", tile)
  end
  
  if tile.properties.blue then
    self:setUpLightType(game, "blue", tile)
  end
  
  if tile.properties.yellow then
    self:setUpLightType(game, "yellow", tile)
  end
  
  if tile.properties.green then
    self:setUpLightType(game, "green", tile)
  end
  
  if tile.properties.off then
    self:setUpLightType(game, "off", tile)
  end
  
  if self.sy == -1 then
    self.properties.lightY = -self.properties.lightY
  end
  
  self[self.lightType] = {
    tile = tile,
    image = tile.image,
    quad = tile.quad
  }
  self:setFlare()

  
end

function Light:change(newLightType)
  if self.lightType ~= newLightType then
    self.lightType = newLightType
    if self[newLightType] then
      self.image = self[newLightType].image
      self.quad = self[newLightType].quad
      
      Object.initHCShapeFromTile(self, self[newLightType].tile, "light", self.pos.x, self.pos.y)
      
      self:setFlare()
    end
  end
end


function Light:update(game, dt)
  Object.update(self, dt)
  
  self.rot = self.rot + dt * 4
  if self.rot > 2 * math.pi then
    self.rot = self.rot - (2 * math.pi)
  end
  
  if self.flare then
    self.flare.a = self:calcA()
  end

end


Light = common_local.class('Light', Light, Object)

return {
	Light = Light,
	newLight = newLight,
}