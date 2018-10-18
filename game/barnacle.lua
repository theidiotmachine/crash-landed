local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Particles = require 'particles'

local Barnacle = {}
local FadeTime = 0.25

local function newBarnacle(...)
	return common_local.instance(Barnacle, ...)
end

--location is centre
function Barnacle:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  Object.loadAuxTile(self, 'deadid', 'down', tile, map)
  self.alive = true
end

function Barnacle:draw(cx, cy)
  local a = 255
  if not self.alive then
    a = 255 * (1 - ((FadeTime - self.aliveCounter) / FadeTime))
  end
  Object.draw(self, cx, cy, a)
end

function Barnacle:update(game, dt)
  Object.update(self, game, dt)
  if self.alive == false then
    self.aliveCounter = self.aliveCounter - dt
    if self.aliveCounter < 0 then
      Object.destroy(self, game)
    end
  end
end

function Barnacle:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if otherType == "crate" and self.alive then
    local partpos = {
        x = (self.pos.x + otherUser.object.pos.x) / 2,
        y = (self.pos.y + otherUser.object.pos.y) / 2
      }
      Particles.createNewOuchSet(partpos)
      
    self.animation = nil
    self.image = self.down.image
    self.quad = self.down.quad
    self.alive = false
    self.aliveCounter = FadeTime
  end
end

Barnacle = common_local.class('Barnacle', Barnacle, Object)

return {
	Barnacle = Barnacle,
	newBarnacle = newBarnacle,
}