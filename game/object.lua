local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')  
  common_local = common
end

--local HC = require 'HC'
local Polygon = require 'HC.polygon'

local Object = {}
--local object = {}
local factoryFuncs = {}
local objects = {}
local namedObjects = {}
local objectsOfType = {}

function Object:getHCShapeFromObjectGroup(game, tile, object, objectType, x, y)
  local HC = game.HC
  local shape = object.shape
  local xoffs = object.x
  local yoffs = object.y
  local hcShape
  if shape == "polygon" then
    local verts = object.polygon
              
    local finalVerts = {}
    for _, vert in ipairs(verts) do
      table.insert(finalVerts, x + vert.x + xoffs - tile.width / 2)
      table.insert(finalVerts, y + vert.y + yoffs - tile.height / 2)
    end
      
    hcShape = HC.polygon(Polygon(unpack(finalVerts)))
  elseif shape == "rectangle" then
    local xoffs = object.x - tile.width / 2
    local yoffs = object.y - tile.height / 2
    local w = object.width
    local h = object.height
    
    hcShape = HC.rectangle(x+xoffs, y+yoffs, w, h)
  end
  
  hcShape.user = {
    object = self,
    type = objectType,
    subType = object.type,
    properties = object.properties
  }
  hcShape.userType = object.type
  return hcShape
end

function Object:initHCShapeFromTile(game, tile, objectType, x, y)
  if tile.objectGroup then
    self.hcShapes = {}
    for idx, object in ipairs(tile.objectGroup.objects) do
      self.hcShapes[idx] = Object.getHCShapeFromObjectGroup(self, game, tile, object, objectType, x, y)
    end
  end
end

function Object:register(object, tile, map)
  if object.name and object.name ~= "" then
    namedObjects[object.name] = self
    self.name = object.name
    if map.script[self.name] then
      self.script = map.script[self.name]
    end
  end
  
  self.type = tile.type
  if self.type and self.type ~= "" then
    if not objectsOfType[self.type] then
      objectsOfType[self.type] = {}
    end
    objectsOfType[self.type][self] = true
  end
end


function Object:initLoc(x, y, drawLayer)
  self.pos = {x = x, y = y}
  self.hidden = false
  objects[self] = drawLayer
end

function Object:init(game, object, tile, drawLayer, map)
  local x = object.x + tile.width/2
  local y = object.y - tile.height/2
  self.tilesize = {x = tile.width, y = tile.height}
  
  Object.initHCShapeFromTile(self, game, tile, tile.type, x, y)
  
  if tile.animation then
    local animation = tile.animation
    local newAnimation = {}
    for _, animFrame in ipairs(animation) do
      local tileid = animFrame.tileid
      local gid = tileid + tile.tilesetObject.firstgid
      local animTile = map.tiles[gid]
      table.insert(newAnimation, {
          duration = animFrame.duration / 1000,
          image = animTile.image,
          quad = animTile.quad
      })
    end
    
    self.animation = newAnimation
    self.animationCounter = 1
    self.animationFrame = 1
  else
    self.quad = tile.quad
    self.image = tile.image
  end
  
  if object.sx then
    self.sx = object.sx
  else
    self.sx = 1
  end
  
  if object.sy then
    self.sy = object.sy
  else
    self.sy = 1
  end
  
  if object.r then
    self.r = object.r
  else
    self.r = 0
  end
  
  
  Object.register(self, object, tile, map)

  local properties = {}
  for k, v in pairs(tile.properties) do
    properties[k] = v
  end
  for k, v in pairs(object.properties) do
    properties[k] = v
  end
  
  self.properties = properties
  Object.initLoc(self, x, y, drawLayer)
end


function Object:destroy(game)
  if self.hcShapes then
  for _, hcShape in pairs(self.hcShapes) do
    game.HC.remove(hcShape)
  end
  end
  
  self.hidden = true
  objects[self] = nil
  if self.name then
    namedObjects[self.name] = nil
  end
  
  if self.type and self.type ~= "" then
    objectsOfType[self.type][self] = nil
  end
end

function Object:update(game, dt)
  if self.animation then
    self.animationCounter = self.animationCounter + dt
    if self.animationCounter > self.animation[self.animationFrame].duration then
      self.animationCounter = 0
      self.animationFrame = self.animationFrame + 1 
      if self.animationFrame > #self.animation then
        self.animationFrame = 1
      end
    end
  end
end

function Object:draw(cx, cy, a)
  local alpha = a or 255
  if not self.hidden then
    local oldR, oldG, oldB, oldA = love.graphics.getColor()
    love.graphics.setColor(oldR, oldG, oldB, alpha)
    if self.animation then
      love.graphics.draw(self.animation[self.animationFrame].image, self.animation[self.animationFrame].quad, 
        self.pos.x+cx+(-self.tilesize.x/2 * self.sx), self.pos.y+cy+(-self.tilesize.y/2 * self.sy), self.r, self.sx, self.sy)
    else
      love.graphics.draw(self.image, self.quad, 
        self.pos.x+cx+(-self.tilesize.x/2 * self.sx), self.pos.y+cy+(-self.tilesize.y/2 * self.sy), self.r, self.sx, self.sy)
    end
    
    love.graphics.setColor(oldR, oldG, oldB, oldA)
  end
end

function Object:getPreCollisionVel(dt)
  return {x = 0, y = 0}
end

local function objectFactory(typeName, ...)
  local factoryFunc = factoryFuncs[typeName]
  if not factoryFunc then
    error("unkown object type ".. typeName)
  else
  
  return factoryFunc(...)
  end
end

local function registerObjectType(typeName, factoryFunc)
  if not factoryFuncs then
    factoryFuncs = {}
  end
  factoryFuncs[typeName] = factoryFunc
end

local function drawAll(cx, cy)
  local drawOrder = { {}, {} }
  for object, layer in pairs(objects) do
    table.insert(drawOrder[layer], object) 
  end
  for _, objectsForLayer in ipairs(drawOrder) do
    for _, object in pairs(objectsForLayer) do
      object:draw(cx, cy)
    end
  end
end

local function updateAll(game, dt)
  for object, _ in pairs(objects) do
    object:update(game, dt)
  end
end

local function postLoadInitAll()
  for object, _ in pairs(objects) do
    if object.postLoadInit then
      object:postLoadInit()
    end 
  end
end

local function sendResetRequestToAll(game)
  for object, _ in pairs(objects) do
    if object.sendResetRequest then
      object:sendResetRequest(game)
    end 
  end
end

local function unloadAll(game)
  for object, _ in pairs(objects) do
    --if object.postLoadInit then
    --if not object.destroy then
      --local i = 3
    --end
    
      object:destroy(game)
    --end 
  end
  objects = {}
  namedObjects = {}
  objectsOfType = {}
end

function Object.getNamedObject(name)
  return namedObjects[name]
end

function Object.getAllObjectsOfType(typeName)
  return objectsOfType[typeName]
end


Object = common_local.class('Object', Object)

return {
	Object = Object,
  objectFactory = objectFactory,
  registerObjectType = registerObjectType,
  register = Object.register,
  init = Object.init,
  initLoc = Object.initLoc,
  initHCShapeFromTile = Object.initHCShapeFromTile,
  getHCShapeFromObjectGroup = Object.getHCShapeFromObjectGroup,
  update = Object.update,
  draw = Object.draw,
  destroy = Object.destroy,
  drawAll = drawAll,
  updateAll = updateAll,
  unloadAll = unloadAll,
  postLoadInitAll = postLoadInitAll,
  getNamedObject = Object.getNamedObject,
  getPreCollisionVel = Object.getPreCollisionVel,
  getAllObjectsOfType = Object.getAllObjectsOfType,
  sendResetRequestToAll = sendResetRequestToAll,
}