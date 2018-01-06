local World = require 'world.world'
local Game = require 'game.game'

local Mode = {queuedModeData = nil}

function Mode.update(dt)
  if Mode.queuedModeData then
    if Mode.modeData then
    Mode.modeData.unload()
    collectgarbage()
  end
  Mode.modeData = Mode.queuedModeData
  Mode.queuedModeData = nil
  end
  
  Mode.modeData.update(dt)
end

function Mode.draw()
  Mode.modeData.draw(dt)
end

function Mode.changeMode(newModeData)
  Mode.queuedModeData = newModeData
end

function Mode.toGame(levelName, absState, language)
  local stateCopy = { gems = {} }
  if absState and absState.gems then 
  for k, v in pairs(absState.gems) do
    stateCopy.gems[k] = v
  end
  end
  Game.load(levelName, stateCopy, language)
  Game.mode = Mode
  Mode.changeMode(Game)
end

function Mode.toWorld(absState, incState)
  if Mode.modeData then
    --come from the game
    incState.money = Mode.modeData.money
    local newGems = {}
    for k, v in pairs(Mode.modeData.state.gems) do
      newGems[k] = v
    end
    incState.levelState = {gems = newGems, name = Mode.modeData.mapName}
  end
  World.load(absState, incState)
  World.mode = Mode
  Mode.changeMode(World)
end

return Mode