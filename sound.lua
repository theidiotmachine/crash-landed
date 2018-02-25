--[[
This from https://love2d.org/wiki/Minimalist_Sound_Manager
I hacked it a tad
]]--

local Sound = {
  volumes = { music = 0.5, fx = 1.0 },
  sources = {}
}

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