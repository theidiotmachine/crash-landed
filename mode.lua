local World = require 'world.world'
local Game = require 'game.game'
local Title = require 'title.title'
local KeyboardState = require 'keyboardState'
local WorldState = require 'worldState'
local Cutscene = require 'cutscene.cutscene'

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
    worldStateName,
    lang
  )
  Game.prep(worldStateName, lang, Mode)
  Mode.changeMode(Game)
end

function Mode.toWorld(incState)
  if Mode.modeData then
    --come from the game
    if incState.finished then
      WorldState.incMoney(Mode.modeData.money)
      WorldState.gotGems(Mode.modeData.worldStateName, Mode.modeData.state.gems)
      if incState.removedBarriers then
        WorldState.destroyBarriers(incState.removedBarriers)
      end
      if incState.changedLevels then
        WorldState.changeLevels(incState.changedLevels)
      end
    end
  
    if WorldState.dir ~= "__nosave__" then
    local json = WorldState.toJSON()
    love.filesystem.write(WorldState.dir .. '/save.json', json)
    end
  end
  World.prep(Mode)
  Mode.changeMode(World)
end

function Mode.toTitle()
  Title.prep(Mode)
  Mode.changeMode(Title)
end

function Mode.toCutscene(name)
  Cutscene.prep(name, Mode)
  Mode.changeMode(Cutscene)
end

return Mode