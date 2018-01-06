local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local DynamicObject = require 'game.dynamicObject'
local Collisions = require 'game.collisions'
local Track = require 'game.track'

local Platform = {}

local function newPlatform(...)
	return common_local.instance(Platform, ...)
end

function Platform:init(game, object, tile, map)
  DynamicObject.init(self, game, object, tile, 1, map)
  
  self.trackName = object.properties.track
  self.speed = 100
end

local function calcDistSq(l, r)
  local xBit = l.x - r.x
  local yBit = l.y - r.y
  return xBit * xBit + yBit * yBit
end

--because the platform sprite is at the top of the image, but we assume the
--centre of the platform is at the centre of the image, we have to adjust the 
--location
function Platform:irritatingPos()
  local pos = { x = self.pos.x, y = self.pos.y - 50 }
  return pos
end

function Platform:postLoadInit()
  if self.trackName then
    
    self.track = Track.getTrack(self.trackName)
    
    local pos = self:irritatingPos()
    local closestIndex = nil
    local closestDistSq = nil
    for idx, trackPos in pairs(self.track.polyline) do
      local distSq = calcDistSq(pos, trackPos)
      if not closestIndex or distSq < closestDistSq then
        closestDistSq = distSq
        closestIndex = idx
      end
    end
    
    self:goTo(self.track.polyline[closestIndex])
    self.trackDestIndex = closestIndex
    self.trackCurrIndex = closestIndex
  end
end

function Platform:goTo(pos)
  local dx = pos.x - self.pos.x
  local dy = pos.y + 50 - self.pos.y
  self:move(dx, dy)
end

function Platform:update(game, dt)
  DynamicObject.update(self, game, dt)
  
  if self.track then
    if self.trackCurrIndex ~= self.trackDestIndex then
      local dest = self.track.polyline[self.trackDestIndex]
      local pos = self:irritatingPos()
      local distSq = calcDistSq(pos, dest)
      if distSq <= self.speed * self.speed * dt * dt then
        self:goTo(dest)
        self.trackCurrIndex = self.trackDestIndex
        if self.script and self.script.atDest then
          self.script.atDest(self, game)
        end
      else
        local dist = math.sqrt(distSq)
        local dy = ((dest.y - pos.y) / dist) * self.speed * dt
        local dx = ((dest.x - pos.x) / dist) * self.speed * dt
        self:move(dx, dy)
      end
    end
  end
end

function Platform:beginCollision(dt)
end

function Platform:resolveCollision(game, dt, resolutionVector)
  self:move(resolutionVector.x, resolutionVector.y)
end

function Platform:finalizeCollision(game, dt)
  self.vel.x = ((self.pos.x - self.prevpos.x) / dt)
  self.vel.y = ((self.pos.y - self.prevpos.y) / dt)
end

Platform = common_local.class('Platform', Platform, DynamicObject) --Object)

return {
	Platform = Platform,
	newPlatform = newPlatform,
  init = Platform.init
}