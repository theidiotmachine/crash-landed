local Particles = {}
local sprites = {}
local sets = {}

function Particles.globalInit()
  local imageFile = love.graphics.newImage("assets/art/platform redux parts.png")
  sprites["star"] = {
    quad=love.graphics.newQuad(0, 0, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["water"] = {
    quad=love.graphics.newQuad(32, 32, 16, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 16,
    h = 16
  }
  sprites["smoke1"] = {
    quad=love.graphics.newQuad(0, 64, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["smoke2"] = {
    quad=love.graphics.newQuad(32, 64, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["smoke3"] = {
    quad=love.graphics.newQuad(64, 64, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["spark1"] = {
    quad=love.graphics.newQuad(0, 96, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["spark2"] = {
    quad=love.graphics.newQuad(32, 96, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["spark3"] = {
    quad=love.graphics.newQuad(64, 96, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
end

function Particles.update(dt)
  local deadSets = {}
  for sIdx, set in pairs(sets) do
    local deads = {}
    for pIdx, particle in pairs(set) do
      particle.vel.x = particle.vel.x + particle.acc.x * dt
      particle.vel.y = particle.vel.y + particle.acc.y * dt
      
      particle.pos.x = particle.pos.x + particle.vel.x * dt
      particle.pos.y = particle.pos.y + particle.vel.y * dt
      particle.time = particle.time + dt
      if particle.time > particle.life then
        table.insert(deads, pIdx)
      end
    end
    
    for i = #deads, 1, -1 do
      table.remove(set, i)
    end
    if #set == 0 then
      table.insert(deadSets, sIdx)
    end

  end
  for i = #deadSets, 1, -1 do
    table.remove(sets, i)
  end
end

function Particles.draw(cx, cy)
  for _, set in pairs(sets) do
    for _, particle in pairs(set) do
      local a = 128 + 128 * ((particle.life - particle.time) / particle.life)
      love.graphics.setColor(255, 255, 255, a)
      love.graphics.draw(particle.sprite.texture, particle.sprite.quad, 
        cx + particle.pos.x - particle.sprite.w/2, 
        cy + particle.pos.y - particle.sprite.h/2)
    end
  end
end

--[[
This from StackOverflow, Generate a random point within a circle (uniformly), answer by btilly
]]--
local function randPointInCircle(offs, sweep)
  local a = math.random()
  local b = math.random()
  if b < a then
    local t = b
    b = a
    a = t
  end
  local xOffs = b * math.cos(offs + sweep * a / b)
  local yOffs = b * math.sin(offs + sweep * a / b)
  return xOffs, yOffs
end

local function randPointOnCircle(offs, sweep)
  local a = math.random()
  local xOffs = math.cos(offs + sweep * a)
  local yOffs = math.sin(offs + sweep * a)
  return xOffs, yOffs
end

function Particles.createNewOuchSet(pos)
  local set = {}
  local number = 12
  local radius = 30
  for i = 1, number, 1 do
    
    local xOffs, yOffs = randPointInCircle(0, 2 * math.pi)
    
    local particle = {
      sprite = sprites["star"],
      time = 0, 
      life = 0.2 + 0.5 * math.random(),
      pos = {
        x = pos.x + xOffs * radius,
        y = pos.y + yOffs * radius,
      },
      vel = {
        x = xOffs * 500,
        y = yOffs * 500
      },
      acc = {
        x = 0,
        y = 0
      }
    }
    table.insert(set, particle)
  end
  table.insert(sets, set)
end

function Particles.createNewSparkSet(pos)
  local set = {}
  local number = 12
  local radius = 32
  for i = 1, number, 1 do
    
    local xOffs, yOffs = randPointInCircle(0, 2 * math.pi)
    
    local particle = {
      sprite = sprites["spark1"],
      time = 0, 
      life = 0.25 + 0.25 * math.random(),
      pos = {
        x = pos.x + xOffs * radius,
        y = pos.y + yOffs * radius,
      },
      vel = {
        x = xOffs * 300,
        y = yOffs * 300
      },
      acc = {
        x = 0,
        y = 2000
      }
    }
    table.insert(set, particle)
  end
  table.insert(sets, set)
end

function Particles.createNewSplashSet(pos, yVel)
  local set = {}
  yVel = math.min(math.abs(yVel), 700)
  
  local number = yVel / 200
  if number >= 1 then
    number = number + 4
  end
  
  local radius = 10 + yVel / 35
  for i = 1, number, 1 do
    local xOffs, yOffs = randPointInCircle(math.pi, math.pi)
    
    local particle = {
      sprite = sprites["water"],
      time = 0, 
      life = 0.5 + 0.5 * math.random(),
      pos = {
        x = pos.x + radius * xOffs,
        y = pos.y + radius * yOffs,
      },
      vel = {
        x = xOffs * 500,
        y = yOffs * 200 - 200
      },
      acc = {
        x = 0,
        y = 500
      }
    }
    table.insert(set, particle)
  end
  table.insert(sets, set)
end

return Particles