local Particles = require 'particles'

local Explosions = {}

function Explosions.largeCircular(game, dt, from)
  from.exploding = true
  local pos = from.pos
  local collisionObject = game.HC.circle(pos.x, pos.y, 150)
  local pcols = game.HC.collisions(collisionObject)
  for otherCollisionObject, separatingVector in pairs(pcols) do
    if otherCollisionObject.user then
      local otherWorldUser = otherCollisionObject.user
      if otherWorldUser.object then
        local otherWorldObject = otherWorldUser.object
        if from ~= otherWorldObject and not otherWorldObject.exploding and otherWorldObject.takeDamage then
          otherWorldObject:takeDamage(game, dt, 'explosion', 1, separatingVector, pos)
        end
      end
    end
  end
  
  game.HC.remove(collisionObject)
  
  Particles.createNewBigExplosion(pos)
end

return Explosions