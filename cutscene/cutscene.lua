local Cutscene = {}

function Cutscene.prep(name, mode)
  Cutscene.mode = mode
  Cutscene.name = name
end

function Cutscene.load()
  local sequence = love.filesystem.load("assets/cutscenes/"..Cutscene.name.."/sequence.lua")()
  Cutscene.sequence = sequence
  Cutscene.scene = sequence.scenes[1]
  Cutscene.scene.setup(Cutscene.name)
end

function Cutscene.unload()
end

function Cutscene.update(dt)
end

function Cutscene.draw(dt)
  local ww = love.graphics.getWidth()
	local wh = love.graphics.getHeight()
  
  --love.graphics.setScissor(0, 0, ww, wh)
  
  love.graphics.setBackgroundColor(0, 0, 0)
  
  local h = (ww/16)*9
  --local h = ww/2.39
  local borderh = (wh-h)/2
  local scaleFactor = ww / 1920
  
  love.graphics.setColor(255, 255, 255)
  Cutscene.scene.draw(scaleFactor)
  
  --draw the borders
  love.graphics.setColor(0, 0, 0)
  love.graphics.rectangle('fill', 0, 0, ww, borderh)
  love.graphics.rectangle('fill', 0, wh-borderh, ww, borderh)
  --love.graphics.setScissor(0, borderh, ww, h)
  
end

return Cutscene