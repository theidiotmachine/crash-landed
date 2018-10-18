local buttonGreen = {}

function buttonGreen.down(button, game)
  game.mode.toWorld({removedBarriers={map05green=true}, finished = true})
end


return {
  buttonGreen = buttonGreen
}