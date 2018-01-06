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
local CollisionArea = require 'game.collisionArea'
local Flares = require 'game.flares'
local Mine = require 'game.mine'
local Jelly = require 'game.jelly'
local Hud = require 'hud'

local Game = {
  HC = require 'HC'
}

function Game.globalInit()
  --Player.playerGlobalInit()

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
  Object.registerObjectType("collisionArea", function(...) return CollisionArea.newCollisionArea(...) end)
  Object.registerObjectType("mine", function(...) return Mine.newMine(...) end)
  Object.registerObjectType("jelly", function(...) return Jelly.newJelly(...) end)
  
  Object.registerObjectType("p1start", function(...) 
      player = Player.newPlayer(...)
      return player
  end)
end


function Game.load(mapName, absState, lang)
  Game.mapName = mapName
  local newState = Game.state
  if absState then
    newState = absState
  end
  
  Game.state = newState
  
  Game.money = 0
  
  Player.playerLoadAssets()
  
  Flares.load()
  
	-- Load a map exported to Lua from Tiled
  Game.map = sti("assets/maps/"..mapName..".lua")
  Game.HC.resetHash(512, true)
  hc_polys = hc_init.buildShapeFromMapLayers(Game, 
    "assets/maps/"..mapName.."script.lua", "assets/maps/"..mapName.."_txt_".. lang .. ".lua", 
    Game.map)
  
  Game.scriptUpdate = Game.map.script.update
  Game.scriptInit = Game.map.script.init
  Game.restartPoint = { x = player.pos.x, y = player.pos.y }
  
  fontDebug = love.graphics.newFont(14)
    
  debugDrawCollisionShapes = false
  
  Game.camera = Camera.new(player.pos.x, player.pos.y - 64)
  
  ambient = Ambient.new(255, 255, 255)
  
  if Game.scriptInit then
    Game.scriptInit(Game)
  end
end

function Game.sendResetRequest()
  Object.sendResetRequestToAll(Game)
end


function Game.unload()
  Game.map = nil
  for _, hc_poly in ipairs(hc_polys) do
    Game.HC.remove(hc_poly)
  end
  hc_polys = nil
  Game.camera = nil
  player = nil
  
  Flares.unload()
  Player.playerUnloadAssets()
  sti:flush()
  Object.unloadAll(Game)
  Game.HC.resetHash(512, true)
end


local dtStub = 0
function Game.update(dt)
  debugDt = dt
  
  
  local step = 1/240
  if debugMode then step = 1/15 end
  local dtFrag = dt + dtStub
  
  --because you only get results when you are in something, and not when you leave, we 
  --let the hud do a precollision flag clear. If the frag is so small that we will not
  --get updates and therefore no collisions... leave it
  if dtFrag > step then
    Hud.gamePreUpdate(dt)
  end
  
  Collisions.beginDynamics()
  
  while dtFrag > step do
    Game.map:update(step)
    Object.updateAll(Game, step)
    Collisions.run(Game, step)
    dtFrag = dtFrag - step
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
  Game.camera.pos.y = player.pos.y
  Camera.constrain(Game.camera, minX, maxX, maxY)
end

function Game.draw()
  -- Draw the map and all objects within
	--love.graphics.setColor(255, 255, 255)
  
  local cx, cy = Camera.getOffset(Game.camera)
  
  love.graphics.setColor(ambient.color.r, ambient.color.g, ambient.color.b)
	Game.map:draw(cx, cy)

  love.graphics.setColor(ambient.color.r, ambient.color.g, ambient.color.b)
  Object.drawAll(cx, cy)
  
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
  
  love.graphics.setColor(ambient.color.r, ambient.color.g, ambient.color.b)
  Particles.draw(cx, cy)
  Flares.draw(cx, cy)
  Hud.gameDraw(Game, player)
end

return Game
