local Object = require 'game.object'

local Map09Script = {}

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

local buttonGreen = {}

function buttonGreen.down(button, game)
  --game.mode.toWorld({removedBarriers={map05green=true}, finished = true})
end

local convSwitch = {}

function convSwitch.right(switch, game)
  for i = 1, 6 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "right"
  end
end

function convSwitch.left(switch, game)
  for i = 1, 6 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "off"
  end
end

local function arrowsLeft() 
    local arr = Object.getNamedObject("arrowL1")
    arr:change('on')
    arr = Object.getNamedObject("arrowR1")
    arr:change('off')
    arr = Object.getNamedObject("arrowL2")
    arr:change('on')
    arr = Object.getNamedObject("arrowR2")
    arr:change('off')
end

local function arrowsRight() 
    local arr = Object.getNamedObject("arrowL1")
    arr:change('off')
    arr = Object.getNamedObject("arrowR1")
    arr:change('on')
    arr = Object.getNamedObject("arrowL2")
    arr:change('off')
    arr = Object.getNamedObject("arrowR2")
    arr:change('on')
end

local plat1 = {}

function plat1.atDest(plat, game)
    local arr = Object.getNamedObject("arrowL1")
    arr:change('off')
    arr = Object.getNamedObject("arrowR1")
    arr:change('off')
    arr = Object.getNamedObject("arrowL2")
    arr:change('off')
    arr = Object.getNamedObject("arrowR2")
    arr:change('off')
end

local platButtonL = {}

function platButtonL.down(switch, game) 
    local plat = Object.getNamedObject("plat1")
    if plat.trackDestIndex == 2 then
        plat.trackDestIndex = 1
        arrowsLeft()
    else
        plat.trackDestIndex = 2
        arrowsRight()
    end
    plat.trackCurrIndex = 0
end
  

local platButtonR = {}


function platButtonR.down(switch, game) 
    local plat = Object.getNamedObject("plat1")
    if plat.trackDestIndex == 2 then
        plat.trackDestIndex = 1
        arrowsLeft()
    else
        plat.trackDestIndex = 2
        arrowsRight()
    end
    plat.trackCurrIndex = 0
end


local function bouncePlat(plat, game)
    plat.trackDestIndex = plat.trackCurrIndex + 1
    if plat.trackDestIndex > #plat.track.polyline then
      plat.trackDestIndex = 1
    end
    plat.trackCurrIndex = 0
end

local function initPlat(plat)
  plat.trackDestIndex = 1
  plat.trackCurrIndex = 0
end

local plat2 = {}
function plat2.atDest(plat, game)
    bouncePlat(plat, game)
end

local plat3 = {}
function plat3.atDest(plat, game)
    bouncePlat(plat, game)
end

local plat4 = {}
function plat4.atDest(plat, game)
    bouncePlat(plat, game)
end

local function init(game)
    local plat = Object.getNamedObject("plat2")
    initPlat(plat)
    plat = Object.getNamedObject("plat3")
    initPlat(plat)
    plat = Object.getNamedObject("plat4")
    initPlat(plat)
end

Map09Script = {
  buttonGreen = buttonGreen,
  convSwitch = convSwitch,
  plat1 = plat1,
  platButtonR = platButtonR,
  platButtonL = platButtonL,
  plat2 = plat2,
  plat3 = plat3,
  plat4 = plat4,
  init = init
}

return Map09Script