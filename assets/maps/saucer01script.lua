local Object = require 'game.object'
local Particles = require 'particles'
local Hud = require 'hud'
local Sound = require 'sound'
local Saucer01Script = {}
  
local levelState = {
  powerReset = false,
  powerOn = true,
  lightCycle = 0.0,
  lightFadeTime = 0.0,
  podReady = false,
  initialDialog = true,
  playedcutscene2 = false,
  playedcutscene3 = false,
  playedcutscene4 = false,
  playedcutscene51 = false,
  playedcutscene52 = false,
  playedcutscene53 = false,
  playedcutscene6 = false,
  playedcutscene7 = false,
  playedgemcutscene = false,
  buttonPuzzleSolved = false,
}

local function openDoor(doorName, buttonName)
  if levelState.powerOn then
    local door1d = Object.getNamedObject(doorName .. "d")
    --door1d.state = "opening"
    door1d:open()
    local door1u = Object.getNamedObject(doorName .. "u")
    door1u:open(true)
    local button = Object.getNamedObject(buttonName)
    button:press(true)
  end
end

local function closeDoor(doorName, buttonName)
  if levelState.powerOn then
    local button = Object.getNamedObject(buttonName)
    if button.state == "up" then
      local door1d = Object.getNamedObject(doorName .. "d")
      door1d:close()
      local door1u = Object.getNamedObject(doorName .. "u")
      door1u:close(true)
    end
  end
end

local cutscene2 = {
}

function cutscene2.collide(colArea, game, object)
  if object.type == "player" and levelState.playedcutscene2 == false then
    levelState.playedcutscene2 = true
    Hud.inDialog(
    {
      tree = 
      {
        a = {who = 'hudPlayer_blue', text = 'OK, I have patched into your helmet cam. I can see what you can see.\n'
          .. 'Looks like the ship is in a bad state, it will need fixing. I think you should get to the escape saucer.', 
          options = {{text="Isn't that creepy?", dest='b'}, {text='I like the flashing lights!', dest='c'}}},
        b = {who = 'hudPlayer_blue', text = "...what? I'll close my eyes if you go to the bathroom. Now, go to the escape saucer!", 
          options = {{text="Um OK", dest='d'}, {text='Where is it?', dest='d'}}},
        c = {who = 'hudPlayer_blue', text = "...you must have been whacked harder than I thought. Now, go to the escape saucer!", 
          options = {{text="Um OK", dest='d'}, {text='Where is it?', dest='d'}}},
        d = {who = 'hudPlayer_blue', text = "You need to get to the top of the ship. There is a ladder that goes up. ".. 
          "Follow the signs!", 
          options = {{text="OK!", dest='exit'}}},
      },
      start = 'a'
    })
  end
end

local cutscene4 = {
}

function cutscene4.collide(colArea, game, object)
  if object.type == "player" and levelState.playedcutscene4 == false and levelState.buttonPuzzleSolved == false then
    levelState.playedcutscene4 = true
    Hud.inDialog(
    {
      tree = 
      {
        a = {who = 'hudPlayer_blue', text = "Um, something I forgot to mention. " .. 
          "I, uh, didn't want you messing with the power, so I made it quite hard to get in. Sorry?", 
          options = {{text="I never mess with anything! Mostly.", dest='b'}, {text='This is why doors are bad!', dest='c'}}},
        b = {who = 'hudPlayer_blue', text = "That is not true, and you know it. " .. 
          "There is a button to the left of the ladder. It opens the door. Push something heavy onto it.", 
          options = {{text="OK", dest='exit'}}},
        c = {who = 'hudPlayer_blue', text = "Doors are important Clide. Now. " .. 
          "There is a button to the left of the ladder. It opens the door. Push something heavy onto it.", 
          options = {{text="OK", dest='exit'}}},
      },
      start = 'a'
    })
  end
end

local cutscene5 = {
}

function cutscene5.collide(colArea, game, object)
  if object.type == "player" then 
    if levelState.playedcutscene51 == false then
      levelState.playedcutscene51 = true
      Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = "Great! Now, turn it off and on again!" , 
            options = {
              {text="OK", dest='exit'},
              {text="I think I could be an engineer", dest='b'}
            }},
          b = {who = 'hudPlayer_blue', text = "We have had this conversation before. You fly, I fix up the ship afterwards." , 
            options = {
              {text="Awww...", dest='exit'},
            }},
        },
        start = 'a'
      })
    elseif levelState.playedcutscene52 == false and levelState.powerReset and levelState.powerOn then
      levelState.playedcutscene52 = true
      Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = "OK, now let's get you to that escape saucer. Up!" , 
            options = {
              {text="OK. I'm only doing this because there might be cookies?", dest='b'},
              {text="Do you always tell me what to do?", dest='c'}
            } 
          },
          b = {who = 'hudPlayer_blue', text = "...yes. Yes, there might be cookies." , 
            options = {{text="Yay!", dest='exit'}}
          },
          c = {who = 'hudPlayer_blue', text = "...no. Well, only mostly. Now get to the darn escape ship!" , 
            options = {{text="OK", dest='exit'}},
          },
        },
        start = 'a'
      })
    elseif levelState.powerOn == false and levelState.playedcutscene53 == false then
      levelState.playedcutscene53 = true
      Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = "Clide, the power needs to be on or nothing will work..." , 
            options = {{text="I knew that", dest='b'}, {text="Whoops, OK", dest = 'exit'}}
          },
          b = {who = 'hudPlayer_blue', text = "No, you didn't. That's why I am the engineer, and you are the pilot." , 
            options = {{text="OK, OK...", dest='exit'}}
          },
        },
        start = 'a'
      })
    end
  end
end

local cutscene6 = {}

function cutscene6.collide(colArea, game, object)
  if object.type == "player" and levelState.playedcutscene6 == false then 
    levelState.playedcutscene6 = true
    Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = "Nearly there. Now, you need to get up that ladder." , 
            options = {
              {text="OK", dest='exit'},
            }},
        },
        start = 'a'
      })
  end
end

local cutscene7 = {}

function cutscene7.collide(colArea, game, object)
  if object.type == "player" and levelState.playedcutscene7 == false then 
    levelState.playedcutscene7 = true
    Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = "Oh no, I forgot to fuel the escape saucer. We'll need to fuel it." , 
            options = {
              {text="More engineering work for me! Do I need an engineer?", dest='b'},
              {text="Does it go fast?", dest='c'},
            }},
          b = {who = 'hudPlayer_blue', text = "Look, don't get any ideas, OK? Now, go over until you find a switch. ".. 
            "Pull it, and a fuel barrel should fall down. Push the barrel over to the charging station.", 
            options = {
              {text="OK", dest='exit'},
            }},
          c = {who = 'hudPlayer_blue', text = "No, it's rubbish. Now, go over until you find a switch. ".. 
            "Pull it, and a fuel barrel should fall down. Push the barrel over to the charging station.", 
            options = {
              {text="I wanted a fast one! OK", dest='exit'},
            }},
        },
        start = 'a'
      })
  end
end

local function gemCutscene(object)
  if object.type == "player" and levelState.playedgemcutscene == false then 
    levelState.playedgemcutscene = true
    Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = "Oh, that's handy. That's a trilithium crystal. Keep an eye out for them!" , 
            options = {
              {text="OK", dest='exit'},
            }},
        },
        start = 'a'
      })
  end
  
  
end

local cutscenegemyellow = {}
local cutscenegemgreen = {}
local cutscenegemblue = {}
local cutscenegemred = {}

function cutscenegemyellow.collide(colArea, game, object)
  gemCutscene(object)
end

function cutscenegemgreen.collide(colArea, game, object)
  gemCutscene(object)
end

function cutscenegemblue.collide(colArea, game, object)
  gemCutscene(object)
end

function cutscenegemred.collide(colArea, game, object)
  gemCutscene(object)
end


local button1l = {
}

function button1l.down(switch, game) 
  openDoor("door1", "button1r")
end

function button1l.up(switch, game) 
  closeDoor("door1", "button1r")
end

local button1r = {
}

function button1r.down(switch, game) 
  openDoor("door1", "button1l")
end

function button1r.up(switch, game) 
  closeDoor("door1", "button1l")
end


local button2l = {
}

function button2l.down(switch, game) 
  openDoor("door2", "button2r")
end

function button2l.up(switch, game) 
  if levelState.powerReset then
    closeDoor("door2", "button2r")
  end
end

local button2r = {
}

function button2r.down(switch, game) 
  if levelState.powerReset then
    openDoor("door2", "button2l")
  else
    local door2u = Object.getNamedObject("door2u")
    Particles.createNewSparkSet(door2u.pos)
    if levelState.playedcutscene3 == false then
      levelState.playedcutscene3 = true
      Hud.inDialog(
      {
        tree = 
        {
          a = {who = 'hudPlayer_blue', text = 'Oh no! The electrics are fried. The surge must have tripped something.', 
            options = {{text="This is bad?", dest='b'}, {text="Bah, I hate doors.", dest='c'}}},
          b = {who = 'hudPlayer_blue', text = 'Yes this is bad. We need to reset the power. '
            ..'You need to get to engineering and reset the main power source.', 
            options = {{text="I like reseting things!", dest='d'}, {text="So turn it off and on again?", dest='d'}}},
          c = {who = 'hudPlayer_blue', text = 'You are so getting a medical check when I see you. OK. We need to reset the power. '
            ..'You need to get to engineering and reset the main power source.', 
            options = {{text="Switches are our friends!", dest='d'}, {text="So turn it off and on again?", dest='d'}}},
          d = {who = 'hudPlayer_blue', text = 'Yes. Engineering is down the bottom of the saucer. You need to go all the way down.', 
            options = {{text="OK", dest='exit'}}},
        },
        start = 'a'
      })
    end
  end
end

function button2r.up(switch, game)
  if levelState.powerReset then
    closeDoor("door2", "button2l")
  end
end

local button3l = {
}

function button3l.down(switch, game) 
  openDoor("door3", "button3r")
  levelState.buttonPuzzleSolved = true
end

function button3l.up(switch, game) 
  closeDoor("door3", "button3r")
  levelState.buttonPuzzleSolved = false
end

local button3r = {
}

function button3r.down(switch, game) 
  openDoor("door3", "button3l")
end

function button3r.up(switch, game) 
  closeDoor("door3", "button3l")
end

local powerSwitch = {}

function powerSwitch.right(switch, game)
  Sound.playFX("assets/sound/shutdown1.ogg")
  levelState.powerOn = false
  levelState.lightFadeTime = 1
  levelState.lightFade = { r = ambient.ambientColor.r - 64, g = ambient.ambientColor.g - 64, b = ambient.ambientColor.b - 96 }
 
  local powerScreen = Object.getNamedObject("powerScreen")
  powerScreen.signText = Saucer01Script.text["powerOff"]
  
  local lp0Screen = Object.getNamedObject("lp0Screen")
  lp0Screen.signText = Saucer01Script.text["rebooting"]
  
  local door2screen = Object.getNamedObject("door2screen")
  door2screen.signText = Saucer01Script.text["rebooting"]
  
  local bridgeScreen = Object.getNamedObject("bridgeScreen")
  bridgeScreen.signText = Saucer01Script.text["rebooting"]
  
  local cogs = Object.getAllObjectsOfType("cog")
  for cog, _ in pairs (cogs) do
    cog.spinning = false
  end
  
  local lights = Object.getAllObjectsOfType("light")
  for light, _ in pairs (lights) do
    light:change("off")
  end
end

function powerSwitch.left(switch, game)
  Sound.playFX("assets/sound/bong1.ogg")
  levelState.powerOn = true
  levelState.powerReset = true
  levelState.lightFadeTime = 1
  levelState.lightFade = { r = ambient.ambientColor.r - 255, g = ambient.ambientColor.g - 255, b = ambient.ambientColor.b - 255 }
  
  local powerScreen = Object.getNamedObject("powerScreen")
  powerScreen.signText = Saucer01Script.text["powerOn"]
  
  local lp0Screen = Object.getNamedObject("lp0Screen")
  lp0Screen.signText = Saucer01Script.text["lp0OutOfPaper"]
  
  local door2screen = Object.getNamedObject("door2screen")
  door2screen.signText = Saucer01Script.text["nominal"]
  
  local bridgeScreen = Object.getNamedObject("bridgeScreen")
  bridgeScreen.signText = Saucer01Script.text["nominal"]
  
  local cogs = Object.getAllObjectsOfType("cog")
  for cog, _ in pairs (cogs) do
    cog.spinning = true
  end
  
  local lights = Object.getAllObjectsOfType("light")
  for light, _ in pairs (lights) do
    if light.name ~= 'chargerLight' then
      light:change("green")
    end
  end
end

local convSwitch = {}

function convSwitch.left(switch, game)
  for i = 1, 4 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "left"
  end
end

function convSwitch.right(switch, game)
  for i = 1, 4 do
    local conv = Object.getNamedObject("conv" .. i)
    conv.properties.moving = "off"
  end
end

local charger = {}

function charger.collide(colArea, game, object)
  if object.type == "crate" then
    local l = Object.getNamedObject("chargerLight")
    l:change("blue")
    game.map.layers["Little Saucer Door"].visible = true
    levelState.podReady = true
  end
end

local saucerDoor = {}

function saucerDoor.collide(colArea, game, object)
  if object.type == "player" and levelState.podReady then
    game.mode.toWorld({finished = true, 
        changedLevels = 
          {saucer = 
            {
              level = "saucer02",
              canQuitToWorld = true,
              bgmName = 'Mighty Like Us'
            }} })
  end
end

local function init(game)
  player.teleportTimer = 0
  Hud.inDialog(
    {
      tree = 
      {
        a = {who = 'hudPlayer_blue', text = 'Clide? Clide? Are you OK? Can you hear me?', 
          options = {{text='Urghhh', dest='b'}, {text='Whaaaa?', dest='b'}}},
        b = {who = 'hudPlayer_blue', text = 'Thank goodness you are OK! Can you get the ship started?', 
          options = {{text='Where am I?', dest='c'}, {text='Who are you?', dest='c'}}},
        c = {who = 'hudPlayer_blue', text = 'What? Oh no! You must have banged your head!\n'
          .. 'This is your engineer, Blonnie, speaking. For whatever reason we crashed on this planet.\n' 
          .. 'I teleported... somewhere, I am not sure where. You are still on the ship. '
          .. 'If the ship can start, I would really like to be picked up!',
          options = {{text='Um ok', dest='exit', cb = function() 
                levelState.initialDialog=false 
                ambient:setBGColor(255, 255, 255)
                game.bgm = Sound.playMusic("assets/music/Mighty Like Us.ogg")
                end}}},
      },
      start = 'a'
    })
    
end

local function update(game, dt)
  if levelState.initialDialog then
    ambient:setBGColor(0, 0, 0)
    ambient:setAmbientColor(0, 0, 0)
  elseif not levelState.powerOn then
    if levelState.lightFadeTime > 0 then
      local fade = levelState.lightFadeTime / 1
      ambient:setAmbientColor(
        64 + fade * levelState.lightFade.r, 64 + fade * levelState.lightFade.g, 96 + fade * levelState.lightFade.b)
      levelState.lightFadeTime = levelState.lightFadeTime - dt
    else
      ambient:setAmbientColor(64, 64, 96)
    end
  elseif not levelState.powerReset then
    local LIGHT_CYCLE_TIME = 3
    levelState.lightCycle = levelState.lightCycle + dt
    if levelState.lightCycle > LIGHT_CYCLE_TIME then
      levelState.lightCycle = levelState.lightCycle - LIGHT_CYCLE_TIME
    end
    local fade = levelState.lightCycle
    if levelState.lightCycle > LIGHT_CYCLE_TIME * 0.5 then
      fade = LIGHT_CYCLE_TIME - levelState.lightCycle
    end
    ambient:setAmbientColor(255 - fade * 48, 128 - fade * 64, 128 - fade * 64)
  else
    if levelState.lightFadeTime > 0 then
      local fade = levelState.lightFadeTime / 1
      ambient:setAmbientColor(
        255 + fade * levelState.lightFade.r, 255 + fade * levelState.lightFade.g, 255 + fade * levelState.lightFade.b)
      levelState.lightFadeTime = levelState.lightFadeTime - dt
    else
      ambient:setAmbientColor(255, 255, 255)
    end
  end
end

Saucer01Script = {
  button1l = button1l,
  button1r = button1r,
  button2l = button2l,
  button2r = button2r,
  button3l = button3l,
  button3r = button3r,
  powerSwitch = powerSwitch,
  convSwitch = convSwitch,
  charger = charger,
  saucerDoor = saucerDoor,
  cutscene2 = cutscene2,
  cutscene4 = cutscene4,
  cutscene5 = cutscene5,
  cutscene6 = cutscene6,
  cutscene7 = cutscene7,
  cutscenegemyellow = cutscenegemyellow,
  cutscenegemgreen = cutscenegemgreen,
  cutscenegemblue = cutscenegemblue,
  cutscenegemred = cutscenegemred,

  init = init,
  update = update
}

return Saucer01Script
