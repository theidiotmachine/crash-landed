local Object = require 'game.object'

local buttonBlueEnd = {}

function buttonBlueEnd.down(button, game)
  game.mode.toWorld(nil, {})
end

local plat1 = {}

function plat1.atDest(plat, game)
  plat.trackDestIndex = plat.trackCurrIndex + 1
  if plat.trackDestIndex > #plat.track.polyline then
    plat.trackDestIndex = 1
  end
  plat.trackCurrIndex = 0
end

local function init(game)
  local plat = Object.getNamedObject("plat1")
  plat.trackDestIndex = 2
  plat.trackCurrIndex = 0
end
  
return {
  buttonBlueEnd = buttonBlueEnd,
  plat1 = plat1,
  init = init
}