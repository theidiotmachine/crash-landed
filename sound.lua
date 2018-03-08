--[[
This from https://love2d.org/wiki/Minimalist_Sound_Manager
I hacked it a tad
]]--

local Sound = {
  volumes = { music = 0.5, fx = 1.0 },
  sources = {}
}

--[[
do
  -- will hold the currently playing sources
  --local sources = {}

  -- check for sources that finished playing and remove them
  -- add to love.update
  function love.audio.update()
    local remove = {}
    for _, sPair in pairs(Sound.sources) do
      if sPair.src:isStopped() then
        remove[#remove + 1] = sPair.src
      end
    end

    for i,s in ipairs(remove) do
      Sound.sources[s] = nil
    end
  end
   
  -- overwrite love.audio.play to create and register source if needed
  local play = love.audio.play
  function love.audio.play(what, how, loop, soundType)
    local src = what
    if type(what) ~= "userdata" or not what:typeOf("Source") then
      src = love.audio.newSource(what, how)
      src:setLooping(loop or false)
    end
    
    src:setVolume(Sound.volumes[soundType or 'fx'])

    play(src)
    Sound.sources[src] = { src = src, soundType = soundType }
    return src
  end
   
  -- stops a source
  local stop = love.audio.stop
  function love.audio.stop(src)
    if not src then return end
    stop(src)
    Sound.sources[src] = nil
  end
end
]]--
function Sound.playMusic(what)
  local src = what
  if type(what) ~= "userdata" or not what:typeOf("Source") then
    src = love.audio.newSource(what, 'stream')
    src:setLooping(true)
  end
    
  src:setVolume(Sound.volumes['music'])

  love.audio.play(src)
  Sound.sources[src] = { src = src, soundType = 'music' }
  return src
end

local function randomPitch()
  local s = love.math.randomNormal(0.1, 1)
  return s
end

function Sound.playFX(what, vol, pitch)
  local src = what
  if type(what) ~= "userdata" or not what:typeOf("Source") then
    src = love.audio.newSource(what, 'static')
  end
    
  src:setVolume(Sound.volumes['fx'] * (vol or 1))
  src:setPitch(pitch or randomPitch())
  src:setRelative(true)
  
  love.audio.play(src)
  Sound.sources[src] = { src = src, soundType = 'fx' }
  return src
end

function Sound.playFXAtLoc(what, loc, vol, pitch)
  
  local src = what
  if type(what) ~= "userdata" or not what:typeOf("Source") then
    src = love.audio.newSource(what, 'static')
  end
    
  src:setVolume(Sound.volumes['fx'] * (vol or 1))
  src:setPitch(pitch or randomPitch())
  src:setPosition(loc.x, loc.y, 0)
  src:setRelative(false)
  --src:setDistanceModel('linear')
  src:setAttenuationDistances(256, 1920)
  
  love.audio.play(src)
  Sound.sources[src] = { src = src, soundType = 'fx' }
  return src
end

function Sound.stop(src)
  if not src then 
    return 
  end
  love.audio.stop(src)
  Sound.sources[src] = nil
end

function Sound.update()
  local remove = {}
    for _, sPair in pairs(Sound.sources) do
      if sPair.src:isStopped() then
        remove[#remove + 1] = sPair.src
      end
    end

    for i,s in ipairs(remove) do
      Sound.sources[s] = nil
    end
end

function Sound.incVolume(inc, soundType)
  Sound.volumes[soundType] = Sound.volumes[soundType] + inc
  Sound.volumes[soundType] = math.max(Sound.volumes[soundType], 0)
  Sound.volumes[soundType] = math.min(Sound.volumes[soundType], 1)
  for _, sPair in pairs(Sound.sources) do
    if sPair.soundType == soundType then
      sPair.src:setVolume(Sound.volumes[soundType])
    end
  end
end

function Sound.incMusicVolume(inc)
  Sound.incVolume(inc, 'music')
end

function Sound.getMusicVolume()
  return Sound.volumes['music']
end

function Sound.incFXVolume(inc)
  Sound.incVolume(inc, 'fx')
end

function Sound.getFXVolume()
  return Sound.volumes['fx']
end

return Sound