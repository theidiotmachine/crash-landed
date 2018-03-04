local Ambient = {}

function Ambient:setAmbientColor(r, g, b)
  self.ambientColor.r = r
  self.ambientColor.g = g
  self.ambientColor.b = b
end

function Ambient:setBGColor(r, g, b)
  self.bgColor.r = r
  self.bgColor.g = g
  self.bgColor.b = b
end


function Ambient.new(ar, ag, ab, bgr, bgg, bgb)
  return { ambientColor = {r = ar, g = ag, b = ab}, 
    bgColor = {r = bgr or 255, g = bgg or 255, b = bgb or 255}, 
    setAmbientColor = Ambient.setAmbientColor,
    setBGColor = Ambient.setBGColor
    }
end

return Ambient