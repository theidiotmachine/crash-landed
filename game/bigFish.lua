local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local DynamicObject = require 'game.dynamicObject'
local Collisions = require 'game.collisions'

local BigFish = {}

local function newBigFish(...)
	return common_local.instance(BigFish, ...)
end

function BigFish:initState(game)
  DynamicObject.initState(self, game)
  self.immersedWaterPoints = {false}
  if self.direction and self.direction ~= -1 then
    for _, hcShape in pairs(self.hcShapes) do
      hcShape:flipX()
    end
  end
  self.direction = -1
  self.vel.x = -300
  self.inLiquid = false
end

function BigFish:beginCollision(dt)
  self.inLiquid = false
  self.immersedWaterPoints = {false}
end

--location is centre
function BigFish:init(game, object, tile, map)
  DynamicObject.init(self, game, object, tile, 1, map)
  self.waterPoints = {{x=0, y=0}}
  self.buoyancyPerWaterPoint = -1.597
  self.resetLoc = { x = self.pos.x, y = self.pos.y }

  Object.loadAuxTile(self, 'bodyid', 'body', tile, map)
  
  --Object.loadAuxTile(self, 'tailid', 'tail', tile, map)
  local tailTileId = tile.properties.tailid
  
  local tailGid = tailTileId + tile.tilesetObject.firstgid
  local tailTile = map.tiles[tailGid]
  
  self.finImage = tailTile.image
  
  self.tailQuad =
    love.graphics.newQuad(
      tailTile.offsetInTileset.x,  tailTile.offsetInTileset.y,
      64,  128,
      tailTile.tilesetObject.imagewidth, tailTile.tilesetObject.imageheight
    )
  
  self.sideFinQuad = 
    love.graphics.newQuad(
      tailTile.offsetInTileset.x + 64,  tailTile.offsetInTileset.y,
      64,  48,
      tailTile.tilesetObject.imagewidth, tailTile.tilesetObject.imageheight
    )
    
  self.bottomFinQuad = 
    love.graphics.newQuad(
      tailTile.offsetInTileset.x + 64,  tailTile.offsetInTileset.y + 48,
      64, 32,
      tailTile.tilesetObject.imagewidth, tailTile.tilesetObject.imageheight
    )
  
  self.tailScaleTimer = 0
  
  self.mode = 'seeking'
end

function BigFish:getWaterPoints()
  local out = {}
  for _, waterPoint in pairs(self.waterPoints) do
    table.insert(out, {x=self.pos.x + waterPoint.x, y=self.pos.y + waterPoint.y})
  end
  return out
end

function BigFish:flip()
  for _, hcShape in pairs(self.hcShapes) do
    hcShape:flipX()
  end
end

function BigFish:update(game, dt)
  if self.resetRequest then
    self:moveTo(self.resetRequest.x, self.resetRequest.y)
    self:initState(game)
    self.resetRequest = nil
  end
  
  DynamicObject.update(self, game, dt)
  
  self.tailScaleTimer = self.tailScaleTimer + dt * 4.0
  if self.tailScaleTimer > 2 * math.pi then
    self.tailScaleTimer = self.tailScaleTimer - 2 * math.pi
  end
  
  --alg - in seeking mode, move towards player
  --if hit obstacle, bounce, go into wander mode for n seconds
  --return to seeking mode
  local targetPos = {}
  if self.mode == 'seeking' then
    local playerpos = player.pos
    targetPos.x = playerpos.x
    targetPos.y = (playerpos.y - 64)
  else
    targetPos = self.wanderTarget
    self.wanderTimer = self.wanderTimer - dt
    if self.wanderTimer < 0 then
      self.mode = 'seeking'
    end
  end
  
  local dtx = targetPos.x - self.pos.x
  local dty = targetPos.y - self.pos.y
  if dtx*dtx + dty*dty < 64 then
    local mul = 1
    if math.random() > 0.5 then
      mul = -1
    end
    self.wanderTarget = { x = self.pos.x + ((math.random() + 1) * 1000) * mul, y = self.pos.y }
  end
  
  if self.prevInLiquid then
    if dty > 0 then
      self.vel.y = self.vel.y + dt * 1000
    elseif dty < 0 then
      self.vel.y = self.vel.y - dt * 1000
    end
    
    if dtx > 0 then
      self.vel.x = self.vel.x + dt * 1000
    elseif dtx < 0 then
      self.vel.x = self.vel.x - dt * 1000
    end
  end
  
  self.vel.y = self.vel.y + 400 * dt
  
  if self.vel.x > 400 then
    self.vel.x = 400
  elseif self.vel.x < -400 then
    self.vel.x = -400 
  end
  
  if self.vel.x > 0 and self.direction ~= 1 then
    self.direction = 1
    self:flip()
  elseif self.vel.x < 0 and self.direction ~= -1 then
    self.direction = -1
    self:flip()
  end
  
  if self.vel.y > 100 then
    self.vel.y = 100
  elseif self.vel.y < -100 then
    self.vel.y = -100 
  end
  
  local dx = self.vel.x * dt
  local dy = self.vel.y * dt
  DynamicObject.move(self, dx, dy)
end

function BigFish:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  DynamicObject.collision(self, game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  
  if (otherType == "ground" and otherUser.stuff ~= "water") or (otherType ~= "ground" and otherUser.properties.colType ~= "none") then
    self.mode = 'wander'
    self.wanderTimer = 3
    local newX = 0
    local newY = 0
    if separatingVector.x < 0 then
      newX = self.pos.x - 500
    elseif separatingVector.x > 0 then
      newX = self.pos.x + 500
    end
    
    if separatingVector.y < 0 then
      newY = self.pos.y - 100
    elseif separatingVector.y > 0 then
      newY = self.pos.y + 100
    end
    
    self.wanderTarget = { x = newX, y = newY }
  end
  
end


function BigFish:draw(cx, cy)
  if self.direction == 1 then
    self.sx = -1
  else 
    self.sx = 1
  end
  DynamicObject.draw(self, cx, cy)
  
  local coreLoc = { x = self.pos.x+cx+(-self.tilesize.x/2 * self.sx), y = self.pos.y+cy+(-self.tilesize.y/2 * self.sy) }
  love.graphics.draw(self.body.image, self.body.quad, 
        coreLoc.x - (self.tilesize.x * self.direction), coreLoc.y, self.r, self.sx, self.sy)
  love.graphics.draw(self.finImage, self.tailQuad, 
        coreLoc.x - ((self.tilesize.x + 80) * self.direction), coreLoc.y, self.r, 
        self.sx - (0.2 + (0.2 * math.sin(self.tailScaleTimer))), 
        self.sy)
      
  love.graphics.draw(self.finImage, self.sideFinQuad, 
        coreLoc.x - (80 * self.direction), 
        coreLoc.y + 56, self.r, 
        self.sx - (0.2 + (0.2 * math.sin(self.tailScaleTimer))), 
        self.sy)
      
  love.graphics.draw(self.finImage, self.bottomFinQuad, 
        coreLoc.x - (48 * self.direction), 
        coreLoc.y + 96, self.r, 
        self.sx , 
        self.sy 
        - (0.2 + (0.2 * math.sin(self.tailScaleTimer)))
        )
      
      
end

function BigFish:receiveResetRequest(game)
  self.resetRequest = { x = self.resetLoc.x, y = self.resetLoc.y }
end

BigFish = common_local.class('BigFish', BigFish, DynamicObject)

return {
	BigFish = BigFish,
	newBigFish = newBigFish,
  init = BigFish.init
}