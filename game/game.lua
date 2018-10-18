local Camera = require 'camera'
local Ambient = require 'game.ambient'
local sti = require "sti"
local hc_init = require "game.hc_init"

local Collisions = require 'game.collisions'
local Particles = require 'particles'
local Player = require "game.player"
local Object = require 'game.object'
local Gem = require 'game.gem'
local Coin = require 'game.coin'
local Flag = require 'game.flag'
local Barnacle = require 'game.barnacle'
local Crate = require 'game.crate'
local Platform = require 'game.platform'
local Track = require 'game.track'
local Spikes = require 'game.spikes'
local Slime = require 'game.slime'
local Cog = require 'game.cog'
local Decoration = require 'game.decoration'
local Switch = require 'game.switch'
local Sign = require 'game.sign'
local Ladder = require 'game.ladder'
local Light = require 'game.light'
local Door = require 'game.door'
local Button = require 'game.button'
local Conveyer = require 'game.conveyer'
local Fish = require 'game.fish'
local BigFish = require 'game.bigFish'
local CollisionArea = require 'game.collisionArea'
local Flares = require 'game.flares'
local Mine = require 'game.mine'
local Jelly = require 'game.jelly'
local Bouncer = require 'game.bouncer'
local FallingTile = require 'game.fallingTile'

local Hud = require 'hud'
local Profile = require 'profile.profile'
local WorldState = require 'worldState'

local FullScreenMenu = require 'ui.fullScreenMenu'
local Sound = require 'sound'

local Game = {
  HC = require 'HC'
}

function Game.globalInit()
  Object.registerObjectType("gem", function(...) return Gem.newGem(...) end)
  Object.registerObjectType("coin", function(...) return Coin.newCoin(...) end)
  Object.registerObjectType("flag", function(...) return Flag.newFlag(...) end)
  Object.registerObjectType("barnacle", function(...) return Barnacle.newBarnacle(...) end)
  Object.registerObjectType("crate", function(...) return Crate.newCrate(...) end)
  Object.registerObjectType("platform", function(...) return Platform.newPlatform(...) end)
  Object.registerObjectType("track", function(...) return Track.newTrack(...) end)
  Object.registerObjectType("spikes", function(...) return Spikes.newSpikes(...) end)
  Object.registerObjectType("slime", function(...) return Slime.newSlime(...) end)
  Object.registerObjectType("cog", function(...) return Cog.newCog(...) end)
  Object.registerObjectType("decoration", function(...) return Decoration.newDecoration(...) end)
  Object.registerObjectType("switch", function(...) return Switch.newSwitch(...) end)
  Object.registerObjectType("sign", function(...) return Sign.newSign(...) end)
  Object.registerObjectType("ladder", function(...) return Ladder.newLadder(...) end)
  Object.registerObjectType("light", function(...) return Light.newLight(...) end)
  Object.registerObjectType("door", function(...) return Door.newDoor(...) end)
  Object.registerObjectType("button", function(...) return Button.newButton(...) end)
  Object.registerObjectType("conveyer", function(...) return Conveyer.newConveyer(...) end)
  Object.registerObjectType("fish", function(...) return Fish.newFish(...) end)
  Object.registerObjectType("bigFish", function(...) return BigFish.newBigFish(...) end)
  Object.registerObjectType("collisionArea", function(...) return CollisionArea.newCollisionArea(...) end)
  Object.registerObjectType("mine", function(...) return Mine.newMine(...) end)
  Object.registerObjectType("jelly", function(...) return Jelly.newJelly(...) end)
  Object.registerObjectType("bouncer", function(...) return Bouncer.newBouncer(...) end)
  Object.registerObjectType("fallingTile", function(...) return FallingTile.newFallingTile(...) end)
  
  Object.registerObjectType("p1start", function(...) 
      player = Player.newPlayer(...)
      return player
  end)
end

local profilerNames = {
  { "update", 0, },
  { "updatePre", 1 }, 
  { "updateDynamics", 1 },
  { "updateDynamicsMap", 2 },
  { "updateDynamicsObjects", 2 },
  { "updateDynamicsCollisions", 2 },
  { 'collisionsBegin', 3 },
  { 'collisionsCol', 3 },
  { 'HC', 4 },
  { 'HCNeigh', 5 },
  { 'HCCol', 5 },
  { 'collisionsFric', 3 },
  { 'collisionsRes', 3 },
  { 'collisionsFin', 3 },
  { "updatePost", 1 },
  { "draw", 0 },
  { "drawMap", 1 },
  { "drawObjects", 1 },
  { "drawMisc", 1 }
}

local HC_HASH_SIZE = 256

function Game.keypressed(key, scancode, isrepeat)
  if key == 'escape' then
    Game.paused = not Game.paused
  end
end

function Game.prep(
    worldStateName,
    lang,
    mode
)
  Game.mode = mode
  local islandData = WorldState.data.islands[worldStateName]

  Game.mapName = islandData.level
  Game.lang = lang
  Game.canQuitToWorld = islandData.canQuitToWorld
  Game.bgmName = islandData.bgmName
  Game.worldStateName = worldStateName
  Game.state = { gems = islandData.state.gems }
end

function Game.load()
  Game.money = 0
  
  Game.paused = false
  
  Player.playerLoadAssets()
  
  Flares.load()
    
	-- Load a map exported to Lua from Tiled
  Game.map = sti("assets/maps/"..Game.mapName..".lua")
  Game.HC.resetHash(HC_HASH_SIZE, true)
  hc_polys = hc_init.buildShapeFromMapLayers(Game, 
    "assets/maps/"..Game.mapName.."script.lua", "assets/maps/"..Game.mapName.."_txt_".. Game.lang .. ".lua", 
    Game.map)
  
  Game.scriptUpdate = Game.map.script.update
  Game.scriptInit = Game.map.script.init
  Game.restartPoint = { x = player.pos.x, y = player.pos.y }
  
  fontDebug = love.graphics.newFont(14)
    
  debugDrawCollisionShapes = false
  profiler = false
  
  Game.camera = Camera.new(player.pos.x, player.pos.y - 64)
    
  ambient = Ambient.new(255, 255, 255)
  
  for _, pdd in ipairs(profilerNames) do
    Profile.registerTime(pdd[1], pdd[2])
  end
  
  Profile.registerCount("dynamicObjects", 0)
  Profile.registerCount("collisions", 0)
  Profile.registerCount("allColShapes", 0)
  
  Game.mode.keyboardState.push(Game.keypressed, nil)
  Hud.setKeyboadState(Game.mode.keyboardState)
  if Game.bgmName then
    Game.bgm = Sound.playMusic("assets/music/" .. Game.bgmName .. ".ogg")
  end
  
  if Game.scriptInit then
    Game.scriptInit(Game)
  end
end

function Game.sendResetRequest()
  Object.sendResetRequestToAll(Game)
end

function Game.unload()
  Hud.clearKeyboadState()
  Game.mode.keyboardState.clear()
  Game.pauseMenu = nil
  Sound.stop(Game.bgm)
  Profile.stop()
  
  Game.map = nil
  for _, hc_poly in ipairs(hc_polys) do
    Game.HC.remove(hc_poly)
  end
  hc_polys = nilglobal
  Game.camera = nil
  player = nil
  
  Flares.unload()
  Particles.clearDown()
  Player.playerUnloadAssets()
  sti:flush()
  Object.unloadAll(Game)
  Game.HC.resetHash(HC_HASH_SIZE, true)
end

local dtStub = 0

function Game.updateProfilerForUpdate(pt0, pt1, pt2, pt3, pdt10, pdt11, pdt12)
  Profile.update('update', pt3 - pt0)
  Profile.update('updatePre', pt1 - pt0)
  Profile.update('updateDynamics', pt2 - pt1)
  Profile.update('updatePost', pt3 - pt2)
  Profile.update('updateDynamicsMap', pdt10)
  Profile.update('updateDynamicsObjects', pdt11)
  Profile.update('updateDynamicsCollisions', pdt12)
  Profile.updateFromFrag('collisionsBegin')
  Profile.updateFromFrag('collisionsCol')
  Profile.updateFromFrag('HC')
  Profile.updateFromFrag('HCNeigh')
  Profile.updateFromFrag('HCCol')
  Profile.updateFromFrag('collisionsFric')
  Profile.updateFromFrag('collisionsRes')
  Profile.updateFromFrag('collisionsFin')
  
  local zz = Game.HC.hash():shapes()
  local i = 0
  for _, _ in pairs(zz) do
    i = i + 1
  end
  Profile.update('allColShapes', i)
end

function Game.updateProfilerForDraw(pt0, pt1, pt2, pt3)
  Profile.update('draw', pt3 - pt0)
  Profile.update('drawMap', pt1 - pt0)
  Profile.update('drawObjects', pt2 - pt1)
  Profile.update('drawMisc', pt3 - pt2)
end

function Game.resume()
  Game.paused = false
end

function Game.openQuitToTitleMenu()
  local function quitToTitle() 
    Game.mode.toTitle() 
  end
  local oldPauseMenu = Game.pauseMenu
  local function back() 
    Game.pauseMenu:shutDown() 
    Game.pauseMenu = oldPauseMenu
  end 
  Game.pauseMenu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Quit', cb = quitToTitle},
      {text = 'Cancel', cb = back}
    },
    Game.mode.keyboardState, 
    back
  )
end

function Game.openQuitMenu()
  local function quitCb() 
    love.event.push('quit')
  end
  local oldPauseMenu = Game.pauseMenu
  local function back() 
    Game.pauseMenu:shutDown() 
    Game.pauseMenu = oldPauseMenu
  end 
  Game.pauseMenu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Quit', cb = quitCb},
      {text = 'Cancel', cb = back}
    },
    Game.mode.keyboardState, 
    back
  )
end

function Game.openQuitToWorld()
  local function quitCb() 
    Game.mode.toWorld({}) 
  end
  local oldPauseMenu = Game.pauseMenu
  local function back() 
    Game.pauseMenu:shutDown() 
    Game.pauseMenu = oldPauseMenu
  end 
  Game.pauseMenu = FullScreenMenu.newFullScreenMenu( {
      {text = 'Return To World', cb = quitCb},
      {text = 'Cancel', cb = back}
    },
    Game.mode.keyboardState, 
    back
  )
end

function Game.openOptionsMenu()
  local oldPauseMenu = Game.pauseMenu
  local function back() 
    Game.pauseMenu:shutDown() 
    Game.pauseMenu = oldPauseMenu
  end 
  Game.pauseMenu = FullScreenMenu.newFullScreenMenu( {
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
    Game.mode.keyboardState, 
    back
  )
end

function Game.openPauseMenu(canReturnToWorld)
  local elems = { {text = "Resume", cb = Game.resume} }
  
  table.insert(elems, {text = "Options", cb = Game.openOptionsMenu})
  if Game.canQuitToWorld then
    table.insert(elems, {text = "Return To World", cb = Game.openQuitToWorld })
  end
  
  table.insert(elems, {text = "Quit To Title", cb = Game.openQuitToTitleMenu})

  table.insert(elems, {text = "Quit Game", cb = Game.openQuitMenu})
  
  Game.pauseMenu = FullScreenMenu.newFullScreenMenu(      
    elems, 
    Game.mode.keyboardState, 
    Game.resume
  ) 
end

function Game.update(dt)  
  if Game.paused then
    if not Game.pauseMenu then
      Game.openPauseMenu(true)
    end
    Game.pauseMenu:update(dt)
    return
  else
    if Game.pauseMenu then
      Game.pauseMenu:shutDown()
      Game.pauseMenu = nil
    end
  end

  
  local pt0 = 0
  local pt1 = 0
  local pt2 = 0
  local pt3 = 0
  local pdt10 = 0
  local pdt11 = 0
  local pdt12 = 0
  local pts = 0
  
  if profiler then
    pt0 = love.timer.getTime()
  end
  
  debugDt = dt
  
  local step = 1/240
  if debugMode then 
    step = 1/15
  end
  local dtFrag = dt + dtStub
  
  dtFrag = math.min(dtFrag, 0.1)
  
  --because you only get results when you are in something, and not when you leave, we 
  --let the hud do a precollision flag clear. If the frag is so small that we will not
  --get updates and therefore no collisions... leave it
  if dtFrag > step then
    Hud.gamePreUpdate(dt)
  end
  
  Collisions.beginDynamics()
  
  if profiler then
    pt1 = love.timer.getTime()
  end
  
  while dtFrag > step do
    
    local pt10 = 0
    local pt11 = 0
    local pt12 = 0
    local pt13 = 0
    if profiler then
       pt10 = love.timer.getTime()
    end
    Game.map:update(step)
    if profiler then
       pt11 = love.timer.getTime()
       pdt10 = pdt10 + pt11 - pt10
    end
    
    Object.updateAll(Game, step)
    
    if profiler then
       pt12 = love.timer.getTime()
       pdt11 = pdt11 + pt12 - pt11
    end
    
    Collisions.run(Game, step)
    
    if profiler then
       pt13 = love.timer.getTime()
       pdt12 = pdt12 + pt13 - pt12
    end
    
    dtFrag = dtFrag - step
  end
  
  if profiler then
    pt2 = love.timer.getTime()
  end
  
  dtStub = dtFrag
  
  if Game.scriptUpdate then
    Game.scriptUpdate(Game, dt)
  end
  
  --Collisions.endDynamics()
  
  Particles.update(dt)
  Hud.gamePostUpdate(dt)
  
  Game.camera.pos.x = player.pos.x
  
  local maxY = Game.map.height * Game.map.tileheight
  local minX = 0
  local maxX = Game.map.width * Game.map.tileheight
  Game.camera.pos.y = player.pos.y - 64
  Camera.constrain(Game.camera, minX, maxX, maxY)

  if profiler then
    pt3 = love.timer.getTime()
    Game.updateProfilerForUpdate(pt0, pt1, pt2, pt3, pdt10, pdt11, pdt12)
  end
end

function Game.draw()
	local pt0, pt1, pt2, pt3 = 0
  if profiler then
    pt0 = love.timer.getTime()
  end
  
  local ww = love.graphics.getWidth()
	local wh = love.graphics.getHeight()
  local cx, cy = Camera.getOffset(Game.camera)
  
  love.graphics.setColor(ambient.ambientColor.r, ambient.ambientColor.g, ambient.ambientColor.b)
	Game.map:draw(cx, cy)
  
  if profiler then
    pt1 = love.timer.getTime()
  end
  
  love.graphics.setColor(ambient.ambientColor.r, ambient.ambientColor.g, ambient.ambientColor.b)
  Object.drawAll(cx, cy, ww, wh)
  
  if profiler then
    pt2 = love.timer.getTime()
  end
  
  if debugDrawCollisionShapes then
    local zz = Game.HC.hash():shapes()
    local i = 1
    for _, hc_poly in pairs(zz) do
      love.graphics.setColor(127 + math.fmod(i * 23, 128), 255 - math.fmod(i * 19, 128), 127 + math.fmod(i * 29, 128), 128)
      hc_poly:draw(cx, cy, 'fill')
      love.graphics.setColor(127 + math.fmod(i * 23, 128), 255 - math.fmod(i * 19, 128), 127 + math.fmod(i * 29, 128), 255)
      hc_poly:draw(cx, cy, 'line')
      local hx, hy = hc_poly:center()
      love.graphics.setFont(fontDebug)
      love.graphics.setColor(255, 255, 255, 255)
      i = i + 1
      if hc_poly.user.stuff then
        love.graphics.print(i .. " - " .. hc_poly.user.stuff, hx+cx, hy+cy)
      elseif hc_poly.user.object.type then
        love.graphics.print(i .. " - " .. hc_poly.user.object.type, hx+cx, hy+cy)
      end
    end
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.print("dt: " .. debugDt, 400, 10)
    love.graphics.print("fps: " .. 1/debugDt, 400, 30)
    love.graphics.print("c: " .. cx .. ", " .. cy, 400, 50)
  end
  
  if debugDrawCollisionShapes then
    Track.debugDrawAll(cx, cy)
  end
  
  love.graphics.setColor(ambient.ambientColor.r, ambient.ambientColor.g, ambient.ambientColor.b)
  Particles.draw(cx, cy)
  Flares.draw(cx, cy)
  Hud.gameDraw(Game, player)
  if profiler then
    pt3 = love.timer.getTime()
    Game.updateProfilerForDraw(pt0, pt1, pt2, pt3)
    
    love.graphics.setFont(fontDebug)
    love.graphics.setColor(128, 128, 128, 255)
    
    local profilerDrawData = {
      "update", "updatePre", "updateDynamics", "updateDynamicsMap", "updateDynamicsObjects",
      "updateDynamicsCollisions", 
      'collisionsBegin',
      'collisionsCol', 
      'HC', 'HCNeigh', 'HCCol',
      'collisionsFric',
      'collisionsRes',
      'collisionsFin',
      "updatePost", 
      "draw", "drawMap", "drawObjects", "drawMisc",
      "dynamicObjects", "collisions", "allColShapes",
    }
    
    Profile.draw(profilerDrawData)
  end
  
  if Game.pauseMenu then
    Game.pauseMenu:draw()
  end
end

return Game
