local Sound = require 'sound'
local Particles = require 'particles'
local Game = require 'game.game'
local World = require 'world.world'
local Mode = require 'mode'
local Hud = require 'hud'
require 'sound'
local WorldState = require 'worldState'

function love.load()
  --debugging
  debugMode  = false
  if arg[#arg] == "-debug" then 
    require("mobdebug").start() 
    debugMode = true
  end
  
  love.filesystem.setIdentity("theidiotmachine_crashlanded")
  
	-- Grab window size
  if debugMode then
    love.window.setMode(1200, 600, {resizable=true, vsync=true, minwidth=400, minheight=300})
  else
    love.window.setMode(0, 0, {resizable=false, vsync=true, fullscreen = true})
  end
  
  love.audio.setOrientation(0, 0, 1, 0, -1, 0)
  love.audio.setPosition(0, 0, 0)
  love.audio.setDistanceModel('linear')

  fontVecBold32 = love.graphics.newFont("assets/fonts/kenvector_future_thin2.ttf", 24)
  fontVecBold64 = love.graphics.newFont("assets/fonts/Kenney Future Narrow.ttf", 48)

  Game.globalInit()
  Particles.globalInit()
  Hud.load()
  
  
  --WorldState.init("__nosave__")
  --Mode.toGame('testfac', 'eng')
  --Mode.toGame('testwat', 'eng')
  
  --Main one
  Mode.toTitle()
  
  --WorldState.init("__nosave__")
  --Mode.toWorld({})
  
  --Mode.toCutscene("open")
end


function love.update(dt)
  Sound.update()
  Mode.update(dt)
end

function love.draw()
  Mode.draw()
end