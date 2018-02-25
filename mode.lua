local World = require 'world.world'
local Game = require 'game.game'
local Title = require 'title.title'
local KeyboardState = require 'keyboardState'
local WorldState = require 'worldState'

local Mode = {
  queuedModeData = nil,
  keyboardState = KeyboardState,
}

function Mode.update(dt)
  if Mode.queuedModeData then
    if Mode.modeData then
      Mode.modeData.unload()
      collectgarbage()
    end
    Mode.modeData = Mode.queuedModeData
    Mode.modeData.load()
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

function Mode.toGame(
    --[[levelName, absState, language, canQuitToWorld, bgmName, worldStateName]]--
    worldStateName,
    lang
  )
  --[[
  local stateCopy = { gems = {} }
  if absState and absState.gems then 
    for k, v in pairs(absState.gems) do
      stateCopy.gems[k] = v
    end
  end
  ]]--
  --Game.prep(levelName, stateCopy, language, Mode, canQuitToWorld, bgmName, worldStateName)
  Game.prep(worldStateName, lang, Mode)
  Mode.changeMode(Game)
end

function Mode.toWorld(
    --absState, 
    incState
  )
  if Mode.modeData then
    --come from the game
    
    --[[
    incState.money = Mode.modeData.money
    local newGems = {}
    for k, v in pairs(Mode.modeData.state.gems) do
      newGems[k] = v
    end
    incState.levelState = {gems = newGems, name = Mode.modeData.mapName}
    ]]--
    
    if incState.finished then
      WorldState.incMoney(Mode.modeData.money)
      WorldState.gotGems(Mode.modeData.worldStateName, Mode.modeData.state.gems)
      if incState.removedBarriers then
        WorldState.destroyBarriers(incState.removedBarriers)
      end
    end
  
    if WorldState.dir ~= "__nosave__" then
    local json = WorldState.toJSON()
    love.filesystem.write(WorldState.dir .. '/save.json', json)
    end
  end
  World.prep(
    --absState, incState, 
    Mode)
  Mode.changeMode(World)
end

function Mode.toTitle()
  Title.prep(Mode)
  Mode.changeMode(Title)
end

return Mode