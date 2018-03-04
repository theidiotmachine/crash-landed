local FullScreenMenu = require 'ui.fullScreenMenu'
local Sound = require 'sound'
local WorldState = require 'worldState'

local Title = {
}

function Title.prep(mode)
  Title.mode = mode
end

function Title.openQuitMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Quit', cb = function() love.event.push('quit') end },
      {text = 'Cancel', cb = back}
    },
    Title.mode.keyboardState, 
    back
  )
end

function Title.openOptionsMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Music Volume', quantity = { 
          getValue = Sound.getMusicVolume,
          cb = Sound.incMusicVolume
      } },
      {text = 'Sound Effect Volume', quantity = {
          getValue = Sound.getFXVolume,
          cb = Sound.incFXVolume
      } },
      {text = 'Back', cb = back},
    },
    Title.mode.keyboardState, 
    back
  )
end

function Title.openCreditsCodeMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = "HC - Matthias Richter", 
        cb = function() love.system.openURL('https://github.com/vrld/HC') end},
      {text = "STI - Landon Manning", 
        cb = function() love.system.openURL('https://github.com/karai17/Simple-Tiled-Implementation') end},
      {text = "json.lua - rxi",
        cb = function() love.system.openURL('https://github.com/rxi/json.lua') end},
      {text = "Game - Tim Dinsdale & Freddie Dinsdale",
        cb = function() love.system.openURL('https://github.com/theidiotmachine/crash-landed') end},
      {text = 'back', cb = back}
    },
    Title.mode.keyboardState, 
    back
  )
end

function Title.openCreditsArtMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = "Art - Kenney",
        cb = function() love.system.openURL('http://www.kenney.nl') end},
      {text = "Art - Alexandra Alarie",
        cb = function() love.system.openURL('https://opengameart.org/users/pinkcannon') end},
      {text = "Art - Tim Dinsdale",
        cb = function() love.system.openURL('https://opengameart.org/users/theididotmachine') end},
      {text = 'back', cb = back}
    },
    Title.mode.keyboardState, 
    back
  ) 
end

function Title.openCreditsMusicMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = "Music - Kevin MacLeod", 
        cb = function() love.system.openURL('http://www.incompetech.com') end
      },
      {text = 'back', cb = back}
    },
    Title.mode.keyboardState, 
    back
  )
end

function Title.openCreditsSoundMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = "Sound - sophiehall3535", 
        cb = function() love.system.openURL('https://freesound.org/people/sophiehall3535/') end
      },
      {text = 'back', cb = back}
    },
    Title.mode.keyboardState, 
    back
  )
end

function Title.openCreditsMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Code', cb = Title.openCreditsCodeMenu},
      {text = 'Art', cb = Title.openCreditsArtMenu},
      {text = 'Music', cb = Title.openCreditsMusicMenu},
      {text = 'Sound', cb = Title.openCreditsSoundMenu},
      {text = 'Full License', cb = 
        function() love.system.openURL('https://github.com/theidiotmachine/crash-landed/blob/master/LICENSE.MD') end},
      {text = 'back', cb = back}
    },
    Title.mode.keyboardState, 
    back
  )
end

local function rmMinusA(dir)
  if love.filesystem.isDirectory(dir) then
    for _, child in pairs(love.filesystem.getDirectoryItems(dir)) do
      rmMinusA(dir..'/'..child)
    end
  end
  love.filesystem.remove(dir)
end

function Title.makeNewGame(dir)
  love.filesystem.createDirectory(dir)
  WorldState.init(dir)
  local json = WorldState.toJSON()
  love.filesystem.write(dir .. '/save.json', json)
  Title.mode.toGame('saucer', 'eng')
end

function Title.overwriteGameMenu(dir)
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  Title.menu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Overwrite Save', 
        cb = function() 
          rmMinusA(dir)
          Title.makeNewGame(dir) 
        end },
      {text = 'Cancel', cb = back}
    },
    Title.mode.keyboardState, 
    back
  )
end

local function getAvailableSaves()
  local dirItems = love.filesystem.getDirectoryItems("/")
  local available = { ['1'] = true, ['2'] = true, ['3'] = true }
  for _, dirItem in pairs(dirItems) do
    if available[dirItem] then
      available[dirItem] = false
    end
  end
  return available
end

function Title.newGameMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  local available = getAvailableSaves()
  local elems = {}
  for _, elem in ipairs({'1', '2', '3'}) do
    local text = 'slot '.. elem .. ' - '
    local cb = function() Title.makeNewGame(elem) end
    if available[elem] then 
      text = text .. 'empty'
    else
      text = text .. 'used'
      cb = function() Title.overwriteGameMenu(elem) end
    end
    table.insert(elems, {text = text, cb = cb})
  end
  table.insert(elems, {text = 'back', cb = back})
  Title.menu = FullScreenMenu.newFullScreenMenu( elems,
    Title.mode.keyboardState, 
    back
  )
end

function Title.loadGame(dir)
  local json = love.filesystem.read(dir .. '/save.json', json)
  WorldState.fromJSON(json, dir)
  Title.mode.toWorld({})
end

function Title.loadGameMenu()
  local oldMenu = Title.menu
  local function back() 
    Title.menu:shutDown() 
    Title.menu = oldMenu
  end 
  local available = getAvailableSaves()
  
  local elems = {}
  for _, elem in ipairs({'1', '2', '3'}) do
    local text = 'slot ' .. elem
    
    if available[elem] == false then 
      text = text
      cb = function() Title.loadGame(elem) end
      table.insert(elems, {text = text, cb = cb})
    end
  end
  table.insert(elems, {text = 'back', cb = back})
  Title.menu = FullScreenMenu.newFullScreenMenu( elems,
    Title.mode.keyboardState, 
    back
  )
end

function Title.load()
  Title.bgm = love.audio.play("assets/music/Sheep May Safely Graze - BWV 208.ogg", "stream", true, 'music')
  
  local elems = {
    --{text = "New Game", cb = function() Title.mode.toGame("saucer01", {}, "eng", false, "The Show Must Be Go") end},
    {text = "New Game", cb = Title.newGameMenu},
    {text = "Load Game", cb = Title.loadGameMenu},
    {text = "Credits", cb = Title.openCreditsMenu},
    {text = "Options",  cb = Title.openOptionsMenu},
    {text = "Quit", cb = Title.openQuitMenu},
  }
  Title.menu = FullScreenMenu.newFullScreenMenu(
    elems, 
    Title.mode.keyboardState, 
    function() end
  ) 
end

function Title.unload()
  Title.mode.keyboardState.clear()
  Title.menu = nil
  love.audio.stop(Title.bgm)
end

function Title.update(dt)
  Title.menu:update(dt)
end

function Title.draw(dt)
  love.graphics.setBackgroundColor(150, 228, 237)
  Title.menu:draw()
end

return Title