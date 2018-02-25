local Object = require 'game.object'
local Particles = require 'particles'

local Saucer01Script = {}
  
local levelState = {
}

local convSwitch = {}

function convSwitch.left(switch, game)
  for i = 1, 3 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "left"
  end
end

function convSwitch.right(switch, game)
  for i = 1, 3 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "off"
  end
end


local function update(game, dt)
end

Saucer01Script = {
  convSwitch = convSwitch,  
  update = update
}

return Saucer01Script
