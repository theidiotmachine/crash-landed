local Particles = {}
local sprites = {}
local sets = {}
local smokeParts = {}
local smokeEmitters = {}
local smokeDefs = {}

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
  sprites["sparkSmall"] = {
    quad=love.graphics.newQuad(48, 32, 16, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 16,
    h = 16
  }
  
  sprites["sparkVerySmall"] = {
    quad=love.graphics.newQuad(32, 48, 16, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 8,
    h = 8
  }
  
  smokeDefs["normal"] = {
    {life = 0.4, sprite = sprites["smoke1"]},
    {life = 0.5, sprite = sprites["smoke2"]},
    {life = 0.6, sprite = sprites["smoke3"]},
  }
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

function Particles.updateSmokeParticles(dt)
  local deads = {}
  for pIdx, particle in pairs(smokeParts) do
    particle.vel.x = particle.vel.x + particle.acc.x * dt
    particle.vel.y = particle.vel.y + particle.acc.y * dt
    
    particle.pos.x = particle.pos.x + particle.vel.x * dt
    particle.pos.y = particle.pos.y + particle.vel.y * dt
    
    particle.time = particle.time + dt
    if particle.time > particle.def[particle.defIndex].life then
      if particle.defIndex == #particle.def then
        table.insert(deads, pIdx)
      else
        particle.defIndex = particle.defIndex + 1
        particle.time = 0
      end
    end
  end
  
  for i = #deads, 1, -1 do
    table.remove(smokeParts, i)
  end
end


function Particles.updateSmokeEmitters(dt)
  for _, se in pairs(smokeEmitters) do
    se.time = se.time + dt
    if se.time * math.random() > se.freq then
      local xOffs, yOffs = randPointInCircle(0, 2 * math.pi)
      local smokeParticle = {
        def = se.def,
        defIndex = 1,
        time = 0, 
        pos = {
          x = se.pos.x + xOffs * se.radius,
          y = se.pos.y + yOffs * se.radius,
        },
        vel = {
          x = xOffs * 10,
          y = yOffs * 10
        },
        acc = {
          x = 0,
          y = -100
        }
      }
      table.insert(smokeParts, smokeParticle)
      se.time = 0
    end
  end
end

function Particles.updateSets(dt)
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

function Particles.update(dt)
  Particles.updateSets(dt)
  Particles.updateSmokeParticles(dt)
  Particles.updateSmokeEmitters(dt)
end


function Particles.drawSets(cx, cy)
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

function Particles.drawSmoke(cx, cy)
  love.graphics.setColor(255, 255, 255, 255)
  for _, particle in pairs(smokeParts) do
    local sprite = particle.def[particle.defIndex].sprite
    love.graphics.draw(sprite.texture, sprite.quad, 
      cx + particle.pos.x - sprite.w/2, 
      cy + particle.pos.y - sprite.h/2)
  end
end

function Particles.draw(cx, cy)
  love.graphics.setBlendMode("alpha")
  Particles.drawSets(cx, cy)
  Particles.drawSmoke(cx, cy)
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

function Particles.createNewSmallSparkSet(pos)
  local set = {}
  local number = 12
  local radius = 16
  for i = 1, number, 1 do
    
    local xOffs, yOffs = randPointInCircle(0, 2 * math.pi)
    
    local particle = {
      sprite = sprites["sparkVerySmall"],
      time = 0, 
      life = 0.25 + 0.25 * math.random(),
      pos = {
        x = pos.x + xOffs * radius,
        y = pos.y + yOffs * radius,
      },
      vel = {
        x = xOffs * 100,
        y = yOffs * 100
      },
      acc = {
        x = 0,
        y = 1000
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

function Particles.createNewSmokeEmitter(pos)
  table.insert(smokeEmitters, 
    {time = 0, pos = { x = pos.x, y = pos.y }, def = smokeDefs["normal"], freq = 0.1, radius = 16}
  )
end

function Particles.clearDown()
  sets = {}
  smokeParts = {}
  smokeEmitters = {}
end


return Particles