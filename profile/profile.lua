local Profile = {
  data = {},
  times = 0,
}

local NUM_SAMPLES = 500 -- 100

local function updateProfilerDatum(a, d)
  if not d.elems then
    d.elems = { a }
    d.count = 1
    d.value = a / NUM_SAMPLES
    return
  end
  
  if #(d.elems) < NUM_SAMPLES then
    d.elems[#(d.elems) + 1] = a
    d.value = d.value + a / NUM_SAMPLES
    return
  end
  
  local olda = d.elems[d.count]
  if not olda then
    local i = 3
  end
  d.elems[d.count] = a
  d.value = d.value + a/NUM_SAMPLES - olda/NUM_SAMPLES
  d.count = d.count + 1
  if d.count > NUM_SAMPLES then
    d.count = 1
  end
end

function Profile.stop()
  Profile.data = {}
end

function Profile.registerTime(name, indent)
  Profile.data[name] = { indent = indent, valueType = 'time' }
end

function Profile.registerCount(name, indent)
  Profile.data[name] = { indent = indent, valueType = 'count' }
end

function Profile.update(name, a)
  updateProfilerDatum(a, Profile.data[name])
end

function Profile.updateFrag(name, a)
  local d = Profile.data[name]
  if not d.frag then
    d.frag = a
  else
    d.frag = d.frag + a 
  end
end

function Profile.updateFromFrag(name)
  local d = Profile.data[name]
  if d.frag then
  updateProfilerDatum(d.frag, Profile.data[name])
  end
  d.frag = 0
end

function Profile.draw(profilerDrawData)
  for idx, pdd in ipairs(profilerDrawData) do
    local pd = Profile.data[pdd]
    love.graphics.print(pdd, 400 + pd.indent * 20, 10 + idx * 20)
    if pd.valueType == 'time' then
      if pd.value then
      love.graphics.print(string.format("%.2f", pd.value * 1000), 640, 10 + idx * 20)
      love.graphics.rectangle('fill', 700, 10 + idx * 20, pd.value * 100000, 16)
      end
    elseif pd.valueType == 'count' then
      if pd.value then
      love.graphics.print(string.format("%i", pd.value), 640, 10 + idx * 20)
      love.graphics.rectangle('fill', 700, 10 + idx * 20, pd.value, 16)
      end
    end
  end
end

return Profile