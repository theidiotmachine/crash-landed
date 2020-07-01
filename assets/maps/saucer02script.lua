local Object = require 'game.object'
local Particles = require 'particles'
local Hud = require 'hud'
local Sound = require 'sound'
local Saucer01Script = {}
  
local levelState = {
  powerOn = true,
  lightFadeTime = 0.0,
}

local function openDoor(doorName, buttonName)
  if levelState.powerOn then
    local door1d = Object.getNamedObject(doorName .. "d")
    door1d:open()
    local door1u = Object.getNamedObject(doorName .. "u")
    door1u:open(true)
    local button = Object.getNamedObject(buttonName)
    button:press(true)
  end
end

local function closeDoor(doorName, buttonName)
  if levelState.powerOn then
    local button = Object.getNamedObject(buttonName)
    if button.state == "up" then
      local door1d = Object.getNamedObject(doorName .. "d")
      door1d:close()
      local door1u = Object.getNamedObject(doorName .. "u")
      door1u:close(true)
    end
  end
end


local button1l = {
}

function button1l.down(switch, game) 
  openDoor("door1", "button1r")
end

function button1l.up(switch, game) 
  closeDoor("door1", "button1r")
end

local button1r = {
}

function button1r.down(switch, game) 
  openDoor("door1", "button1l")
end

function button1r.up(switch, game) 
  closeDoor("door1", "button1l")
end


local button2l = {
}

function button2l.down(switch, game) 
  openDoor("door2", "button2r")
end

function button2l.up(switch, game) 
  closeDoor("door2", "button2r")
end

local button2r = {
}

function button2r.down(switch, game) 
  openDoor("door2", "button2l")
end

function button2r.up(switch, game)
  closeDoor("door2", "button2l")
end

local button3l = {
}

function button3l.down(switch, game) 
  openDoor("door3", "button3r")
end

function button3l.up(switch, game) 
  closeDoor("door3", "button3r")
end

local button3r = {
}

function button3r.down(switch, game) 
  openDoor("door3", "button3l")
end

function button3r.up(switch, game) 
  closeDoor("door3", "button3l")
end

local powerSwitch = {}

function powerSwitch.right(switch, game)
  Sound.playFX("assets/sound/shutdown1.ogg")
  levelState.powerOn = false
  levelState.lightFadeTime = 1
  levelState.lightFade = { r = ambient.ambientColor.r - 64/255, g = ambient.ambientColor.g - 64/255, b = ambient.ambientColor.b - 96/255 }
 
  local powerScreen = Object.getNamedObject("powerScreen")
  powerScreen.signText = Saucer01Script.text["powerOff"]
  
  local lp0Screen = Object.getNamedObject("lp0Screen")
  lp0Screen.signText = Saucer01Script.text["rebooting"]
  
  local door2screen = Object.getNamedObject("door2screen")
  door2screen.signText = Saucer01Script.text["rebooting"]
  
  local bridgeScreen = Object.getNamedObject("bridgeScreen")
  bridgeScreen.signText = Saucer01Script.text["rebooting"]
  
  local cogs = Object.getAllObjectsOfType("cog")
  for cog, _ in pairs (cogs) do
    cog.spinning = false
  end
  
  local lights = Object.getAllObjectsOfType("light")
  for light, _ in pairs (lights) do
    light:change("off")
  end
end

function powerSwitch.left(switch, game)
  Sound.playFX("assets/sound/bong1.ogg")
  levelState.powerOn = true
  levelState.powerReset = true
  levelState.lightFadeTime = 1
  levelState.lightFade = { r = ambient.ambientColor.r - 255/255, g = ambient.ambientColor.g - 255/255, b = ambient.ambientColor.b - 255/255 }
  
  local powerScreen = Object.getNamedObject("powerScreen")
  powerScreen.signText = Saucer01Script.text["powerOn"]
  
  local lp0Screen = Object.getNamedObject("lp0Screen")
  lp0Screen.signText = Saucer01Script.text["lp0OutOfPaper"]
  
  local door2screen = Object.getNamedObject("door2screen")
  door2screen.signText = Saucer01Script.text["nominal"]
  
  local bridgeScreen = Object.getNamedObject("bridgeScreen")
  bridgeScreen.signText = Saucer01Script.text["nominal"]
  
  local cogs = Object.getAllObjectsOfType("cog")
  for cog, _ in pairs (cogs) do
    cog.spinning = true
  end
  
  local lights = Object.getAllObjectsOfType("light")
  for light, _ in pairs (lights) do
    if light.name ~= 'chargerLight' then
      light:change("green")
    end
  end
end

local convSwitch = {}

function convSwitch.left(switch, game)
  for i = 1, 4 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "left"
  end
end

function convSwitch.right(switch, game)
  for i = 1, 4 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "off"
  end
end

local saucerDoor = {}

function saucerDoor.collide(colArea, game, object)
  if object.type == "player" then
    game.mode.toWorld({finished = true})
  end
end

local function init(game)
  player.teleportTimer = 0
end

local function update(game, dt)
  if not levelState.powerOn then
    if levelState.lightFadeTime > 0 then
      local fade = levelState.lightFadeTime / 1
      ambient:setAmbientColor(
        (64 + fade * levelState.lightFade.r)/255, (64 + fade * levelState.lightFade.g)/255, (96 + fade * levelState.lightFade.b)/255)
      levelState.lightFadeTime = levelState.lightFadeTime - dt
    else
      ambient:setAmbientColor(64/255, 64/255, 96/255)
    end
  else
    if levelState.lightFadeTime > 0 then
      local fade = levelState.lightFadeTime / 1
      ambient:setAmbientColor(
        (255 + fade * levelState.lightFade.r)/255, (255 + fade * levelState.lightFade.g)/255, (255 + fade * levelState.lightFade.b)/255)
      levelState.lightFadeTime = levelState.lightFadeTime - dt
    else
      ambient:setAmbientColor(1, 1, 1)
    end
  end
end

Saucer01Script = {
  button1l = button1l,
  button1r = button1r,
  button2l = button2l,
  button2r = button2r,
  button3l = button3l,
  button3r = button3r,
  powerSwitch = powerSwitch,
  convSwitch = convSwitch,
  saucerDoor = saucerDoor,
  
  init = init,
  update = update
}

return Saucer01Script
