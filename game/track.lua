local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Track = {}
local tracks = {}

--location is centre
function Track:init(game, object, _, map)
  if object.shape == "polyline" then
    self.polyline = object.polyline
  end
  tracks[object.name] = self
end

function Track:debugDraw(cx, cy)
--  Object.draw(self, cx, cy)
  --if debugDrawCollisionShapes then
    love.graphics.line(
        cx + self.polyline[1].x, cy + self.polyline[1].y, 
        cx + self.polyline[2].x, cy + self.polyline[2].y
      )    
  --end
end

function Track:update(game, dt)
end

local function debugDrawAll(cx, cy)
  for trackName, track in pairs(tracks) do
    track:debugDraw(cx, cy)
  end
end

local function getTrack(trackName)
  return tracks[trackName]
end


local function newTrack(...)
	return common_local.instance(Track, ...)
end

Track = common_local.class('Track', Track)

return {
	Track = Track,
	newTrack = newTrack,
  debugDrawAll = debugDrawAll,
  getTrack = getTrack
}