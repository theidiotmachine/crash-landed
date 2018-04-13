local s1 = {
  stars = {},
  starBornTimer = 1,
  starSprites = {}
}

function s1.setup(name)
  local rImg = love.graphics.newImage("assets/cutscenes/"..name.."/star-r-1.png")
  local w, h = rImg:getDimensions()
  s1.starSprites.r = {
    img=rImg,
    w = w,
    h = h
  }
  local backStars = {}
  for i = 1, 10,1 do
    table.insert(backStars, {sprite = s1.starSprites.r, pos = {x = love.math.random() * 1920, y = love.math.random() * 1080}})
  end
  s1.stars = backStars
end

function s1.update(dt)
end

function s1.draw(scaleFactor)
  for _, star in ipairs(s1.stars) do
    love.graphics.draw(star.sprite.img, star.pos.x, star.pos.y - star.sprite.h/2)
  end
end

function s1.shutDown()
end

return {
  scenes = {
    s1
  }
}