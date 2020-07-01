local Flares = {flares = {}}

function Flares.load()
  local flashImage = love.graphics.newImage("assets/art/lights industrial 1.png")
  Flares.sprites = {
      red = {
        quad=love.graphics.newQuad(0, 0, 128, 128, flashImage:getDimensions()),
        image=flashImage,
        w = 128,
        h = 128
      },
      blue = {
        quad=love.graphics.newQuad(128, 0, 128, 128, flashImage:getDimensions()),
        image=flashImage,
        w = 128,
        h = 128
      }
    }
end

function Flares.unload()
  Flares.sprites = {}
  Flares.flares = {}
end


function Flares.create(x, y, image, a)
  local sprite = Flares.sprites[image]
  local flare = {sprite = sprite, x = x, y = y, a = a}
  Flares.flares[flare] = true
  return flare
end


function Flares.draw(cx, cy)
  for flare, _ in pairs(Flares.flares) do
    love.graphics.setColor(1, 1, 1, flare.a)
    love.graphics.draw(flare.sprite.image, flare.sprite.quad, 
      flare.x + cx, 
      flare.y + cy)
  end
end

function Flares.destroy(flare)
  Flares.flares[flare] = nil
end


return Flares