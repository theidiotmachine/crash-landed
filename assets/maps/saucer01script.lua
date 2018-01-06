local Object = require 'game.object'
local Particles = require 'particles'

local Saucer01Script = {}
  
local levelState = {
  powerReset = false,
  powerOn = true,
  lightCycle = 0.0,
  lightFadeTime = 0.0,
  podReady = false,
}

local function openDoor(doorName, buttonName)
  if levelState.powerOn then
    local door1d = Object.getNamedObject(doorName .. "d")
    door1d.state = "opening"
    local door1u = Object.getNamedObject(doorName .. "u")
    door1u.state = "opening"
    local button = Object.getNamedObject(buttonName)
    button:press()
  end
end

local function closeDoor(doorName, buttonName)
  if levelState.powerOn then
    local button = Object.getNamedObject(buttonName)
    if button.state == "up" then
      local door1d = Object.getNamedObject(doorName .. "d")
      door1d.state = "closing"
      local door1u = Object.getNamedObject(doorName .. "u")
      door1u.state = "closing"
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
  if levelState.powerReset then
    openDoor("door2", "button2l")
  else
    local door2u = Object.getNamedObject("door2u")
    Particles.createNewSparkSet(door2u.pos)
  end
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
  levelState.powerOn = false
  levelState.lightFadeTime = 1
  levelState.lightFade = { r = ambient.color.r - 64, g = ambient.color.g - 64, b = ambient.color.b - 96 }
 
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
  levelState.powerOn = true
  levelState.powerReset = true
  levelState.lightFadeTime = 1
  levelState.lightFade = { r = ambient.color.r - 255, g = ambient.color.g - 255, b = ambient.color.b - 255 }
  
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

local charger = {}

function charger.collide(colArea, game, object)
  if object.type == "crate" then
    local l = Object.getNamedObject("chargerLight")
    l:change("blue")
    game.map.layers["Little Saucer Door"].visible = true
    levelState.podReady = true
  end
end

local saucerDoor = {}

function saucerDoor.collide(colArea, game, object)
  if object.type == "player" and levelState.podReady then
    game.mode.toWorld(nil, {})
  end
end

local function update(game, dt)
  if not levelState.powerOn then
    if levelState.lightFadeTime > 0 then
      local fade = levelState.lightFadeTime / 1
      ambient:setColor(64 + fade * levelState.lightFade.r, 64 + fade * levelState.lightFade.g, 96 + fade * levelState.lightFade.b)
      levelState.lightFadeTime = levelState.lightFadeTime - dt
    else
      ambient:setColor(64, 64, 96)
    end
  elseif not levelState.powerReset then
    local LIGHT_CYCLE_TIME = 3
    levelState.lightCycle = levelState.lightCycle + dt
    if levelState.lightCycle > LIGHT_CYCLE_TIME then
      levelState.lightCycle = levelState.lightCycle - LIGHT_CYCLE_TIME
    end
    local fade = levelState.lightCycle
    if levelState.lightCycle > LIGHT_CYCLE_TIME * 0.5 then
      fade = LIGHT_CYCLE_TIME - levelState.lightCycle
    end
    ambient:setColor(255 - fade * 48, 128 - fade * 64, 128 - fade * 64)
  else
    if levelState.lightFadeTime > 0 then
      local fade = levelState.lightFadeTime / 1
      ambient:setColor(255 + fade * levelState.lightFade.r, 255 + fade * levelState.lightFade.g, 255 + fade * levelState.lightFade.b)
      levelState.lightFadeTime = levelState.lightFadeTime - dt
    else
      ambient:setColor(255, 255, 255)
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
  charger = charger,
  saucerDoor = saucerDoor,
  update = update
}

return Saucer01Script
