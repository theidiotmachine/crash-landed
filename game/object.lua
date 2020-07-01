local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')  
  common_local = common
end

local Polygon = require 'HC.polygon'

local Object = {}
local factoryFuncs = {}
local objects = {}
local namedObjects = {}
local objectsOfType = {}

function Object:loadAuxTile(propertyName, memberName, origTile, map)
  local tileId = origTile.properties[propertyName]
  if not tileId then
    return
  end
  local gid = tileId + origTile.tilesetObject.firstgid
  local thisTile = map.tiles[gid]
  self[memberName] = {
    image = thisTile.image,
    quad = thisTile.quad
  }
end

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
    
    local poly = Polygon(unpack(finalVerts))
    poly:setCentroid(x,y)
    hcShape = HC.polygon(poly)
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
          quad = animTile.quad,
          width = animTile.width, 
          height = animTile.height
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

function Object:cull(cx, cy, ww, wh)
  local x = self.pos.x + cx
  local y = self.pos.y + cy
  --deliberately double so we have a margin for rotations
  local w = self.tilesize.x
  local h = self.tilesize.y
  if x + w < 0 or x - w > ww or y + h < 0 or y - h > wh then
    return true
  else
    return false
  end
end

function Object:draw(cx, cy, a)
  local alpha = a or 1
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

function Object:takeDamage(game, dt, damageType, amount, sv, source)
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

local function drawAll(cx, cy, ww, wh)
  local drawOrder = { {}, {} }
  for object, layer in pairs(objects) do
    table.insert(drawOrder[layer], object) 
  end
  for _, objectsForLayer in ipairs(drawOrder) do
    for _, object in pairs(objectsForLayer) do
      if object:cull(cx, cy, ww, wh) == false then
        object:draw(cx, cy)
      end
    end
  end
end

local function updateAll(game, dt)
  local cx = game.camera.pos.x
  local cy = game.camera.pos.y
  local clampSq = MAX_INTERACT_DIST * MAX_INTERACT_DIST
  for object, _ in pairs(objects) do
    local dx = object.pos.x - cx
    local dy = object.pos.y - cy
    --
    
    if dx*dx+dy*dy < clampSq then
      object:update(game, dt)
    end
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
    if object.receiveResetRequest then
      object:receiveResetRequest(game)
    end 
  end
end

local function unloadAll(game)
  for object, _ in pairs(objects) do
    object:destroy(game)
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
  cull = Object.cull,
  destroy = Object.destroy,
  drawAll = drawAll,
  updateAll = updateAll,
  unloadAll = unloadAll,
  postLoadInitAll = postLoadInitAll,
  getNamedObject = Object.getNamedObject,
  getPreCollisionVel = Object.getPreCollisionVel,
  getAllObjectsOfType = Object.getAllObjectsOfType,
  sendResetRequestToAll = sendResetRequestToAll,
  loadAuxTile = Object.loadAuxTile,
}