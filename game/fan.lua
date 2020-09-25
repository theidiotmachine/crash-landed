local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')  
  common_local = common
end

local Polygon = require 'HC.polygon'
local Collisions = require 'game.collisions'
local Object = require 'game.object'

local Fan = {}

local function newFan(...)
	return common_local.instance(Fan, ...)
end

function Fan:init(game, object, tile, map)
    Object.init(self, game, object, tile, 1, map)
    self.direction = self.properties.direction

    local xoffs = object.x - tile.width / 2
    local yoffs = object.y - tile.height / 2
    local w = object.width
    local h = object.height

    local hcShape = nil
    local HC = game.HC
    if self.direction == 'up' then
        hcShape = HC.rectangle(xoffs + tile.width / 2, yoffs-(tile.height*3), tile.width, tile.height*3)
    elseif self.direction == 'down' then
        hcShape = HC.rectangle(xoffs + tile.width / 2, yoffs, tile.width, tile.height*3)
    elseif self.direction == 'left' then
        hcShape = HC.rectangle(xoffs + tile.width -(tile.width*3), yoffs - tile.height / 2, tile.width*3, tile.height)
    else --right
        hcShape = HC.rectangle(xoffs + tile.width, yoffs - tile.height / 2, tile.width*3, tile.height)
    end

    hcShape.user = {
        object = self,
        type = objectType,
        subType = object.type,
        properties = { colType = 'none' }
    }
    hcShape.userType = 'fan'
    self.hcShapes = {}
    self.hcShapes[0] = hcShape;
end

function Fan:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
    local otherObject = otherUser.object
    if self.direction == 'up' then
        local dist = self.pos.y - otherObject.pos.y
        if dist > 0 then
            otherObject.ouchVel.y = otherObject.ouchVel.y - (300/dist)
        end
    elseif self.direction == 'down' then
        local dist = otherObject.pos.y - self.pos.y
        if dist > 0 then
            otherObject.ouchVel.y = otherObject.ouchVel.y + (300/dist)
        end
    elseif self.direction == 'left' then
        local dist = self.pos.x - otherObject.pos.x
        if dist > 0 then
            otherObject.ouchVel.x = otherObject.ouchVel.x - (300/dist)
        end
    elseif self.direction == 'right' then
        local dist = otherObject.pos.x - self.pos.x
        if dist > 0 then
            otherObject.ouchVel.x = otherObject.ouchVel.x + (300/dist)
        end
    end

end

function Fan:draw(cx, cy)
    Object.draw(self, cx, cy)
end
  
function Fan:update(game, dt)
    Object.update(self, game, dt)
end

Fan = common_local.class('Fan', Fan, Object)

return {
	Fan = Fan,
	newFan = newFan,
    init = Fan.init,
}
