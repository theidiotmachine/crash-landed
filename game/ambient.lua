local Ambient = {}

function Ambient:setColor(r, g, b)
  self.color.r = r
  self.color.g = g
  self.color.b = b
end

function Ambient.new(r, g, b)
  return { color = {r = r, g = g, b = b}, setColor = Ambient.setColor }
end

return Ambient