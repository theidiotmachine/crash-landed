local World = {}
local sprites = {}
local Camera = require 'camera'
local Saucer = require 'world.saucer'
local WorldMap = require 'world.worldMap'
local Particles = require 'particles'
local Hud = require 'hud'

local function loadAssets()
  local imageFile = love.graphics.newImage("assets/art/world2.png")
  sprites["grassOct"] = {
    quad=love.graphics.newQuad(0, 0, 192, 240, imageFile:getDimensions()),
    texture=imageFile,
    w = 192,
    h = 240
  }
  
  sprites["grassF"] = {
    quad=love.graphics.newQuad(48, 96, 96, 144, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 144
  }
  
  sprites["grassB"] = {
    quad=love.graphics.newQuad(48, 0, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  
  sprites["iceOct"] = {
    quad=love.graphics.newQuad(192, 0, 192, 240, imageFile:getDimensions()),
    texture=imageFile,
    w = 192,
    h = 240
  }
  
  sprites["iceF"] = {
    quad=love.graphics.newQuad(240, 96, 96, 144, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 144
  }
  
  sprites["iceB"] = {
    quad=love.graphics.newQuad(240, 0, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  
  
  sprites["grassF"] = {
    quad=love.graphics.newQuad(48, 96, 96, 144, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 144
  }
  
  sprites["shipWhole"] = {
    quad=love.graphics.newQuad(0, 240, 116, 58, imageFile:getDimensions()),
    texture=imageFile,
    w = 116,
    h = 58
  }
  
  sprites["shipCrash"] = {
    quad=love.graphics.newQuad(117, 241, 116, 68, imageFile:getDimensions()),
    texture=imageFile,
    w = 116,
    h = 68
  }
  
  sprites["mountain"] = {
    quad=love.graphics.newQuad(240, 240, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  
   sprites["grassWater"] = {
    quad=love.graphics.newQuad(192, 336, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  sprites["greenSmilies"] = {
    quad=love.graphics.newQuad(288, 336, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  sprites["grassBits"] = {
    quad=love.graphics.newQuad(192, 432, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  
  sprites["playerUFO1"] = {
    quad=love.graphics.newQuad(336, 240, 48, 24, imageFile:getDimensions()),
    texture=imageFile,
    w = 48,
    h = 24
  }
  sprites["playerUFO2"] = {
    quad=love.graphics.newQuad(336, 264, 48, 24, imageFile:getDimensions()),
    texture=imageFile,
    w = 48,
    h = 24
  }
  sprites["playerUFO3"] = {
    quad=love.graphics.newQuad(336, 288, 48, 24, imageFile:getDimensions()),
    texture=imageFile,
    w = 48,
    h = 24
  }
  sprites["playerUFOShadow"] = {
    quad=love.graphics.newQuad(336, 312, 48, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 48,
    h = 16
  }
  sprites["barrierRed"] = {
    quad=love.graphics.newQuad(0, 336, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  sprites["barrierYellow"] = {
    quad=love.graphics.newQuad(96, 336, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  sprites["barrierBlue"] = {
    quad=love.graphics.newQuad(0, 432, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  sprites["barrierGreen"] = {
    quad=love.graphics.newQuad(96, 432, 96, 96, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 96
  }
  sprites["zap1"] = {
    quad=love.graphics.newQuad(0, 528, 96, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 16
  }
  sprites["zap2"] = {
    quad=love.graphics.newQuad(0, 544, 96, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 16
  }
  sprites["zap3"] = {
    quad=love.graphics.newQuad(0, 560, 96, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 16
  }
  sprites["zap4"] = {
    quad=love.graphics.newQuad(0, 576, 96, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 16
  }
  sprites["barrierShadow"] = {
    quad=love.graphics.newQuad(0, 592, 96, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 96,
    h = 32
  }
end

World.state = {removedBarriers={}, saucerLoc={x=1, y=1}, money = 0, levels = {}}

function World.load(absState, incState)
  loadAssets()
  
  local newState = World.state
  if absState then
    newState = absState
  end
  
  if incState then
    if incState.removedBarriers then
      for k, v in pairs(incState.removedBarriers) do 
        newState.removedBarriers[k] = v
      end
    end
    if incState.saucerLoc then
      newState.saucerLoc.x = incState.saucerLoc.x
      newState.saucerLoc.y = incState.saucerLoc.y
    end
    if incState.money then
      newState.money = newState.money + incState.money
    end
  
    if incState.levelState then
      newState.levels[incState.levelState.name] = { gems = incState.levelState.gems }
    end
  end
  
  worldMap = WorldMap.new(sprites, newState)
  saucer = Saucer.new(newState.saucerLoc, 
    {sprites["playerUFO1"], sprites["playerUFO2"], sprites["playerUFO3"]}, sprites["playerUFOShadow"])
  World.camera = Camera.new(saucer.pos.x, saucer.pos.y)
  
  
  World.state = newState
end

function World.unload()
  World.state.saucerLoc.x = saucer.origMapLoc.x
  World.state.saucerLoc.y = saucer.origMapLoc.y
  
  Particles.clearDown()
  sprites = {}
  saucer = nil
  World.camera = nil
  worldMap = nil
end

function World.update(dt)
  worldMap:update(dt)
  saucer:update(World, dt)
  World.camera.pos.x = saucer.pos.x
  World.camera.pos.y = saucer.pos.y
  
  Particles.update(dt)
end

function World.draw()
  love.graphics.setBackgroundColor(150, 228, 237)
  
  local cx, cy = Camera.getOffset(World.camera)
  worldMap:draw(cx, cy)
  saucer:draw(cx, cy)
  
  Particles.draw(cx, cy)
  
  Hud.worldDraw(world, saucer)
end

return World