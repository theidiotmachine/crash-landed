local World = {}
local sprites = {}
local Camera = require 'camera'
local Saucer = require 'world.saucer'
local WorldMap = require 'world.worldMap'
local Particles = require 'particles'
local Hud = require 'hud'
local WorldState = require 'worldState'
local FullScreenMenu = require 'ui.fullScreenMenu'
local Sound = require 'sound'
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

function World.prep(mode)
  World.mode = mode
end

function World.keypressed(key, scancode, isrepeat)
  if key == 'escape' then
    World.paused = not World.paused
  end
end

function World.resume()
  World.paused = false
end


function World.load()
  loadAssets()
  
  worldMap = WorldMap.fromWorldState(sprites, WorldState.data)
  saucer = Saucer.new(
    WorldState.data.saucerLoc,
    {sprites["playerUFO1"], sprites["playerUFO2"], sprites["playerUFO3"]}, sprites["playerUFOShadow"])
  World.camera = Camera.new(saucer.pos.x, saucer.pos.y)
  
  World.mode.keyboardState.push(World.keypressed, nil)
  Hud.setKeyboadState(World.mode.keyboardState)
  
  World.paused = false
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


function World.openQuitToTitleMenu()
  local function quitToTitle() 
    World.mode.toTitle() 
  end
  local oldPauseMenu = World.pauseMenu
  local function back() 
    World.pauseMenu:shutDown() 
    World.pauseMenu = oldPauseMenu
  end 
  World.pauseMenu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Quit', cb = quitToTitle},
      {text = 'Cancel', cb = back}
    },
    World.mode.keyboardState, 
    back
  )
end

function World.openQuitMenu()
  local function quitCb() 
    love.event.push('quit')
  end
  local oldPauseMenu = World.pauseMenu
  local function back() 
    World.pauseMenu:shutDown() 
    World.pauseMenu = oldPauseMenu
  end 
  World.pauseMenu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Quit', cb = quitCb},
      {text = 'Cancel', cb = back}
    },
    World.mode.keyboardState, 
    back
  )
end

function World.openOptionsMenu()
  local oldPauseMenu = World.pauseMenu
  local function back() 
    World.pauseMenu:shutDown() 
    World.pauseMenu = oldPauseMenu
  end 
  World.pauseMenu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Music Volume', quantity = { 
          getValue = Sound.getMusicVolume,
          cb = Sound.incMusicVolume
      } },
      {text = 'Sound Effect Volume', quantity = {
          getValue = Sound.getFXVolume,
          cb = Sound.incFXVolume
      } },
      {text = 'Back', cb = back},
    },
    World.mode.keyboardState, 
    back
  )
end


function World.openPauseMenu(canReturnToWorld)
  local elems = { {text = "Resume", cb = World.resume} }
  
  table.insert(elems, {text = "Options", cb = World.openOptionsMenu})
  
  table.insert(elems, {text = "Quit To Title", cb = World.openQuitToTitleMenu})

  table.insert(elems, {text = "Quit Game", cb = World.openQuitMenu})
  
  World.pauseMenu = FullScreenMenu.newFullScreenMenu(      
    elems, 
    World.mode.keyboardState, 
    World.resume
  ) 
end

function World.update(dt)
  if World.paused then
    if not World.pauseMenu then
      World.openPauseMenu(true)
    end
    World.pauseMenu:update(dt)
    return
  else
    if World.pauseMenu then
      World.pauseMenu:shutDown()
      World.pauseMenu = nil
    end
  end
  
  worldMap:update(dt)
  saucer:update(World, dt)
  World.camera.pos.x = saucer.pos.x
  World.camera.pos.y = saucer.pos.y
  love.audio.setPosition(World.camera.pos.x, World.camera.pos.y, 0)
  
  Particles.update(dt)
end

function World.draw()
  love.graphics.setBackgroundColor(150/255, 228/255, 237/255)
  
  local cx, cy = Camera.getOffset(World.camera)
  worldMap:draw(cx, cy)
  saucer:draw(cx, cy)
  
  Particles.draw(cx, cy)
  
  if not World.paused then
    if saucer.destMapLoc.x == saucer.origMapLoc.x and saucer.destMapLoc.y == saucer.origMapLoc.y then
    Hud.worldDraw(world, saucer)
    end
  else
    World.pauseMenu:draw()
  end
  
end

return World