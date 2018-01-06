local Particles = require 'particles'
local Game = require 'game.game'
local World = require 'world.world'
local Mode = require 'mode'
local Hud = require 'hud'

function love.load()
  --debugging
  debugMode  = false
  if arg[#arg] == "-debug" then 
    require("mobdebug").start() 
    debugMode = true
  end
  
	-- Grab window size
  if debugMode then
    love.window.setMode(1200, 600, {resizable=true, vsync=true, minwidth=400, minheight=300})
  else
    love.window.setMode(0, 0, {resizable=false, vsync=true, fullscreen = true})
  end
	windowWidth  = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()

  Game.globalInit()
  Particles.globalInit()
  
  Hud.load()
  
  Mode.toGame("saucer01", {}, "eng")
  --Mode.toGame("map01", {}, "eng")
  --Mode.toWorld(nil, {})
end


function love.update(dt)
  --Game.update(dt)
  --World.update(dt)
  Mode.update(dt)
end

function love.draw()
	--Game.draw()
  --World.draw()
  Mode.draw()
end