local Object = require 'game.object'

local switch1 = {
}

function switch1.left(switch, game) 
  local plat = Object.getNamedObject("plat1")
  plat.trackDestIndex = 1
  plat.trackCurrIndex = 0
end

function switch1.right(switch, game)
  local plat = Object.getNamedObject("plat1")
  plat.trackDestIndex = 2
  plat.trackCurrIndex = 0
end

local buttonGreenEnd = {}

function buttonGreenEnd.down(button, game)
  game.mode.toWorld(
    {removedBarriers={map01green=true}, finished = true})
end

local buttonBlueEnd = {}

function buttonBlueEnd.down(button, game)
  game.mode.toWorld({removedBarriers={map01blue=true}, finished = true})
end
  
return {
  switch1 = switch1,
  buttonGreenEnd = buttonGreenEnd,
  buttonBlueEnd = buttonBlueEnd,

  init = init
}
