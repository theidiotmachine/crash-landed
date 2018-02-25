local SampleProfile = {}

local lastTime = 0
local Timer = love.timer
function SampleProfile.start()
  lastTime = Timer.getTime()
  debug.sethook(SampleProfile.hook, 'cr')
end

function SampleProfile.stop()
  debug.sethook(nil)
end

function SampleProfile.hook( hookType )
  --local t = 4
  --local t = Timer.getTime()
  if love.profilerPing then
  end
  --[[
  if t - lastTime < 1000 then
    return
  end
  lastTime = t
  ]]--
  --local funcInfo = debug.getinfo(2, 'nS')
  
end

return SampleProfile