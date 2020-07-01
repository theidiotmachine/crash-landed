local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'

local Cog = {}

local function newCog(...)
	return common_local.instance(Cog, ...)
end

--location is centre
function Cog:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  self.rot = 0
  self.spinning = self.properties.spinning
end

function Cog:draw(cx, cy)
  --love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(self.image, self.quad, 
    self.pos.x+cx, self.pos.y+cy, self.rot, 1, 1, self.tilesize.x/2, self.tilesize.y/2)
  
  if debugDrawCollisionShapes then
    local oldR, oldG, oldB, oldA = love.graphics.getColor()
    for _, hcShape in pairs(self.hcShapes) do 
      love.graphics.setColor(127/255, 1, 127/255, 128/255)
      hcShape:draw(cx, cy, 'fill')
      love.graphics.setColor(127/255, 1, 127/255, 1)
      hcShape:draw(cx, cy, 'line')
    end
    love.graphics.setColor(oldR, oldG, oldB, oldA)
  end
end

function Cog:update(game, dt)
  Object.update(self, game, dt)
  if self.spinning then
    self.rot = self.rot + dt
    if self.rot > 2 * math.pi then
      self.rot = self.rot - 2 * math.pi
    end
  end
end

Cog = common_local.class('Cog', Cog, Object)

return {
	Cog = Cog,
	newCog = newCog,
}