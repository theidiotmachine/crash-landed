local buttonBlueEnd = {}

function buttonBlueEnd.down(button, game)
  game.mode.toWorld({finished = true})
end

return {
    buttonBlueEnd = buttonBlueEnd
}