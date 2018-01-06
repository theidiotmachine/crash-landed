local Camera = {}

function Camera.getOffset(camera)
  local windowWidth  = love.graphics.getWidth()
	local windowHeight = love.graphics.getHeight()
  return windowWidth / 2 - camera.pos.x, windowHeight / 2 - camera.pos.y
end

function Camera.constrain(camera, minX, maxX, maxY)
  local windowWidth  = love.graphics.getWidth()
	local windowHeight = love.graphics.getHeight()
  if camera.pos.x + windowWidth / 2 > maxX then
    camera.pos.x = maxX - windowWidth / 2
  elseif camera.pos.x - windowWidth / 2 < minX then
    camera.pos.x = minX + windowWidth / 2
  end
  
  if camera.pos.y + windowHeight / 2 > maxY then
    camera.pos.y = maxY - windowHeight / 2
  end
  
end

function Camera.new(x, y)
  return { pos = {x = x, y = y} }
end

return Camera