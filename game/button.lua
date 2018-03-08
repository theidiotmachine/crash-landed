local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')
  
  common_local = common
end

local Object = require 'game.object'
local Collisions = require 'game.collisions'
local Sound = require 'sound'

local Button = {}

local function newButton(...)
	return common_local.instance(Button, ...)
end

function Button:setUpState(game, state, tile)
  local tileId = tile.properties[state]
  local gid = tileId + tile.tilesetObject.firstgid
  local thisTile = game.map.tiles[gid]
    self[state] = {
      tile = thisTile,
      image = thisTile.image,
      quad = thisTile.quad
    }
end


--location is centre
function Button:init(game, object, tile, map)
  Object.init(self, game, object, tile, 1, map)
  Collisions.registerFinalizedWorldObject(self)
  
  self.state = self.properties.state
  if tile.properties.up then
    self:setUpState(game, "up", tile)
  end
  
  if tile.properties.down then
    self:setUpState(game, "down", tile)
  end
  
  self.timer = 0
  
  self[self.state] = {
    tile = tile,
    image = tile.image,
    quad = tile.quad
  }
end

function Button:draw(cx, cy)
  Object.draw(self, cx, cy)
end

function Button:update(gane, dt)
  Object.update(self, dt)
  if self.state == "down" then
    --self.queuedState = "up"
    --self.timer = 2
  end
  if self.timer > 0 then
    self.timer = self.timer - dt
    if self.timer < 0 then
      self.timer = 0
      self.queuedState = "up"
    end
  end
  
end

function Button:change(game, newState)
  self.state = newState
  self.image = self[newState].image
  self.quad = self[newState].quad
  for _, hcShape in pairs(self.hcShapes) do
    game.HC.remove(hcShape)
  end
  Object.initHCShapeFromTile(self, game, self[newState].tile, "button", self.pos.x, self.pos.y)
  if self.script and self.script[newState] then
    self.script[newState](self, game)
  end
end

function Button:collision(game, dt, selfCollisionObject, otherCollisionObject, otherType, otherUser, separatingVector)
  if selfCollisionObject.user.subType == "button" then
    self:press()
  end
end

function Button:press(silent)
  if self.state == "up" then
    self.queuedState = "down"
    if not silent then
      Sound.playFXAtLoc("assets/sound/switch37.ogg", self.pos)
    end
  elseif self.state == "down" then
    self.queuedState = nil
  end
  self.timer = 2
end


function Button:finalizeCollision(game, dt)
  if self.queuedState then
    self:change(game, self.queuedState)
    self.queuedState = nil
  end
end

Button = common_local.class('Button', Button, Object)

return {
	Button = Button,
	newButton = newButton,
}