local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local DynamicObject = require 'game.dynamicObject'

local Door = {}

local function newDoor(...)
	return common_local.instance(Door, ...)
end

--location is centre
function Door:init(game, object, tile, map)
  DynamicObject.init(self, game, object, tile, 1, map)
  self.state = self.properties.state
  
  self.offset = 0
  if self.state == "open" then
    if self.properties.doorType == "slideUp" then
      self.offset = -128
    elseif self.properties.doorType == "slideDown" then
      self.offset = 128
    end
    self:move(0, self.offset)
  end
end


function Door:update(game, dt)
  --DynamicObject.update(self, dt)
  
  if self.state == "opening" then
    local dy = dt * 500
    
    if self.properties.doorType == "slideUp" then
      dy = dy * -1
    end
    
    local newOffset = self.offset + dy
    
    if self.properties.doorType == "slideUp" then
      if newOffset < -128 then
        dy = -128 - self.offset
        self.offset = -128
        self.state = "open"
      else
        self.offset = newOffset
      end
    elseif self.properties.doorType == "slideDown" then
      if newOffset > 128 then
        dy = 128 - self.offset
        self.offset = 128
        self.state = "open"
      else
        self.offset = newOffset
      end
    end
    DynamicObject.move(self, 0, dy)
  elseif self.state == "closing" then
    local dy = dt * -500
    
    if self.properties.doorType == "slideUp" then
      dy = dy * -1
    end
    
    local newOffset = self.offset + dy
    
    if self.properties.doorType == "slideUp" then
      if newOffset > 0 then
        dy = - self.offset
        self.offset = 0
        self.state = "closed"
      else
        self.offset = newOffset
      end
    elseif self.properties.doorType == "slideDown" then
      if newOffset < 0 then
        dy = - self.offset
        self.offset = 0
        self.state = "closed"
      else
        self.offset = newOffset
      end
    end
    
    DynamicObject.move(self, 0, dy)
  end
end

function Door:finalizeCollision(game, dt)
end

Door = common_local.class('Door', Door, DynamicObject)

return {
	Door = Door,
	newDoor = newDoor,
}