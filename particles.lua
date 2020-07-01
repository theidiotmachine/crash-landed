local Sound = require 'sound'

local Particles = {}
local sprites = {}
local smokeEmitters = {}
local smokeDefs = {}
local boomDefs = {}
local smallBoomDefs = {}
local particles = {}

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
  sprites["smokesmall1"] = {
    quad=love.graphics.newQuad(0, 64, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["smokesmall2"] = {
    quad=love.graphics.newQuad(32, 64, 32, 32, imageFile:getDimensions()),
    texture=imageFile,
    w = 32,
    h = 32
  }
  sprites["smokesmall3"] = {
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
  
  sprites["teleportspark1"] = {
    quad=love.graphics.newQuad(96, 80, 16, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 16,
    h = 16
  }
  
  sprites["circle4"] = {
    quad=love.graphics.newQuad(128, 0, 64, 64, imageFile:getDimensions()),
    texture=imageFile,
    w = 64,
    h = 64
  }
  
  sprites["circle2"] = {
    quad=love.graphics.newQuad(48, 32, 16, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 16,
    h = 16
  }
  
  sprites["circle1"] = {
    quad=love.graphics.newQuad(32, 48, 16, 16, imageFile:getDimensions()),
    texture=imageFile,
    w = 8,
    h = 8
  }
  
  smokeDefs["small"] = {
    {life = 0.4, sprite = sprites["smokesmall1"]},
    {life = 0.5, sprite = sprites["smokesmall2"]},
    {life = 0.6, sprite = sprites["smokesmall3"]},
  }
  
  boomDefs = {
    --[[
    {life = 0.4, sprite = sprites["circle4"], 
      colorFrom = {r = 255, g = 255, b = 255},
      colorTo = { r = 255, g = 204, b = 0 }, 
      sizeFrom = 0.25,
      sizeTo = 0.4,
    },
    ]]--
    {life = 0.2, sprite = sprites["circle4"], 
      colorFrom = { r = 255/255, g = 204/255, b = 0, a = 255/255 },
      colorTo = { r = 240/255, g = 157/255, b = 30/255, a = 255/255 }, 
      sizeFrom = 0.4,
      sizeTo = 0.6,
    },
    {life = 0.2, sprite = sprites["circle4"], 
      colorFrom = { r = 240/255, g = 157/255, b = 30/255, a = 255/255 },
      colorTo = { r = 240/255, g = 114/255, b = 30/255, a = 255/255 }, 
      sizeFrom = 0.6,
      sizeTo = 0.8,
    },
    {life = 0.2, sprite = sprites["circle4"], 
      colorFrom = { r = 240/255, g = 114/255, b = 30/255, a = 255/255 },
      colorTo = { r = 51/255, g = 51/255, b = 51/255, a = 255/255 }, 
      sizeFrom = 0.8,
      sizeTo = 1.0,
    },
    {life = 0.2, sprite = sprites["circle4"], 
      colorFrom = { r = 51/255, g = 51/255, b = 51/255, a = 255/255 }, 
      colorTo = { r = 51/255, g = 51/255, b = 51/255, a = 0 }, 
      sizeFrom = 1.0,
      sizeTo = 0.2,
    },
  }
  
  smallBoomDefs = {
    {life = 0.4, sprite = sprites["circle2"], 
      colorFrom = {r = 1, g = 1, b = 1},
      colorTo = { r = 1, g = 204/255, b = 0 }, 
      sizeFrom = 0.4,
      sizeTo = 0.6,
    },
    {life = 0.3, sprite = sprites["circle2"], 
      colorFrom = { r = 255/255, g = 204/255, b = 0 },
      colorTo = { r = 240/255, g = 157/255, b = 30/255 }, 
      sizeFrom = 0.6,
      sizeTo = 0.8,
    },
    {life = 0.2, sprite = sprites["circle2"], 
      colorFrom = { r = 240/255, g = 157/255, b = 30/255 },
      colorTo = { r = 240/255, g = 114/255, b = 30/255 }, 
      sizeFrom = 0.8,
      sizeTo = 1,
    },
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

local function particleUpdateDynamics(self, dt)
  self.vel.x = self.vel.x + self.acc.x * dt
  self.vel.y = self.vel.y + self.acc.y * dt
      
  self.pos.x = self.pos.x + self.vel.x * dt
  self.pos.y = self.pos.y + self.vel.y * dt
end

local function particleEvolveSimple(self, dt)
  self.time = self.time + dt
  if self.time > self.life then
    return false
  end
  return true
end

local function particleEvolveDef(self, dt)
  self.time = self.time + dt
  if self.time > self.def[self.defIndex].life then
    if self.defIndex == #self.def then
      return false
    else
      local timed = self.time - self.def[self.defIndex].life  
      self.defIndex = self.defIndex + 1
      self.time = timed
    end
  end
  return true
end

local function particleDrawDefSimple(self, cx, cy)
  love.graphics.setColor(1, 1, 1)
  local sprite = self.def[self.defIndex].sprite
  love.graphics.draw(sprite.texture, sprite.quad, 
    cx + self.pos.x - sprite.w/2, 
    cy + self.pos.y - sprite.h/2)
end

local function linearInterp(from, to, t)
  --assert(t <= 1 and t >= 0)
  t = math.max(0, math.min(t, 1))
  return ((to - from) * t) + from
end

local function particleDrawDefColorSize(self, cx, cy)
  local colorFrom = self.def[self.defIndex].colorFrom
  local colorTo = self.def[self.defIndex].colorTo
  local sizeFrom = self.def[self.defIndex].sizeFrom
  local sizeTo = self.def[self.defIndex].sizeTo
  local life = self.def[self.defIndex].life
  local t = 1 - ((life - self.time) / life)
  
  love.graphics.setColor(
    linearInterp(colorFrom.r, colorTo.r, t), 
    linearInterp(colorFrom.g, colorTo.g, t), 
    linearInterp(colorFrom.b, colorTo.b, t),
    linearInterp(colorFrom.a, colorTo.a, t)
  )
  local size = linearInterp(sizeFrom, sizeTo, t)
  local sprite = self.def[self.defIndex].sprite
  love.graphics.draw(sprite.texture, sprite.quad, 
    cx + self.pos.x - (sprite.w*size)/2, 
    cy + self.pos.y - (sprite.h*size)/2, 
    0, size, size)
end

local function particleDrawFade(self, cx, cy)
  local a = 128 + 128 * ((self.life - self.time) / self.life)
  love.graphics.setColor(1, 1, 1, a/255)
  love.graphics.draw(self.sprite.texture, self.sprite.quad, 
    cx + self.pos.x - self.sprite.w/2, 
    cy + self.pos.y - self.sprite.h/2)
end

local function particleDrawCircleFade(self, cx, cy)
  local colorFrom = self.colorFrom
  local colorTo = self.colorTo
  local life = self.life
  local t = 1 - ((life - self.time) / life)
  assert(t>=0 and t<=1)
  local a = (1 - t)
  love.graphics.setColor(
    linearInterp(colorFrom.r, colorTo.r, t), 
    linearInterp(colorFrom.g, colorTo.g, t), 
    linearInterp(colorFrom.b, colorTo.b, t),
    a
  )
  local sizeFrom = self.sizeFrom
  local sizeTo = self.sizeTo
  local size = linearInterp(sizeFrom, sizeTo, t)
  love.graphics.circle('fill', cx + self.pos.x, cy + self.pos.y, size)
end

function Particles.updateParticles(dt)
  local deads = {}
  for pIdx, particle in pairs(particles) do
    particle:update(dt)
    local liveOn = particle:evolve(dt)
    if liveOn == false then
      table.insert(deads, pIdx)
    end
  end
  
  for i = #deads, 1, -1 do
    table.remove(particles, deads[i])
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
        },
        update = particleUpdateDynamics,
        draw = particleDrawDefSimple,
        evolve = particleEvolveDef,
      }
      table.insert(particles, smokeParticle)
      se.time = 0
    end
  end
end

function Particles.update(dt)
  Particles.updateParticles(dt)
  Particles.updateSmokeEmitters(dt)
end

function Particles.drawParticles(cx, cy)
  for _, particle in pairs(particles) do
    particle:draw(cx, cy)
  end
end

function Particles.draw(cx, cy)
  Particles.drawParticles(cx, cy)
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
      },
      update = particleUpdateDynamics,
      draw = particleDrawFade,
      evolve = particleEvolveSimple
    }
    table.insert(particles, particle)
  end
end

function Particles.createNewSparkSet(pos)
  Sound.playFXAtLoc("assets/sound/zap1.ogg", pos)
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
      },
      
      update = particleUpdateDynamics,
      draw = particleDrawFade,
      evolve = particleEvolveSimple
    }
    table.insert(particles, particle)
  end
end

function Particles.createNewSmallSparkSet(pos)
  Sound.playFXAtLoc("assets/sound/zap1.ogg", pos)
  local set = {}
  local number = 12
  local radius = 16
  for i = 1, number, 1 do
    local xOffs, yOffs = randPointInCircle(0, 2 * math.pi)
    
    local particle = {
      sprite = sprites["circle1"],
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
      },
      update = particleUpdateDynamics,
      draw = particleDrawFade,
      evolve = particleEvolveSimple
    }
    table.insert(particles, particle)
  end
end

function Particles.createNewSplashSet(pos, yVel)
  local set = {}
  yVel = math.min(math.abs(yVel), 700)
  
  local number = yVel / 200
  
  local s = math.random(2)
  Sound.playFXAtLoc("assets/sound/splash" .. s ..  ".ogg", pos, yVel / 700)
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
      pos = { x = pos.x + radius * xOffs, y = pos.y + radius * yOffs, },
      vel = { x = xOffs * 500, y = yOffs * 200 - 200 },
      acc = { x = 0, y = 500 },
      update = particleUpdateDynamics,
      draw = particleDrawFade,
      evolve = particleEvolveSimple
    }
    table.insert(particles, particle)
  end
end

function Particles.createNewCheckpointSet(pos)
  local set = {}
  
  local number = 25
  
  for i = 1, number, 1 do
    local xOffs = (math.random() - 0.5) * 128
    local yOffs = -64 * math.random()
    
    local particle = {
      sprite = sprites["teleportspark1"],
      time = 0, 
      life = 0.3 + 0.3 * math.random(),
      pos = { x = pos.x + xOffs, y = pos.y + yOffs, },
      vel = { x = 0, y = -50 + -200 * math.random() },
      acc = { x = 0, y = -100 + -300 * math.random() },
      update = particleUpdateDynamics,
      draw = particleDrawFade,
      evolve = particleEvolveSimple
    }
    table.insert(particles, particle)
  end
end


function Particles.createNewBigExplosion(pos)
  Sound.playFXAtLoc("assets/sound/boom1.ogg", pos)
  local set = {}
  local number = 32
  local radius = 4
  local def = boomDefs
  for i = 1, number, 1 do    
    local xOffs, yOffs = randPointOnCircle(0, 2 * math.pi)
    local thisRadius = radius * (2 * math.random())
    local thisVel = 200 * (0.8 + 0.4 * math.random())
    local particle = {
      def = def,
      defIndex = 1,
        
      time = 0, 
      pos = {
        x = pos.x + xOffs * thisRadius,
        y = pos.y + yOffs * thisRadius,
      },
      vel = {
        x = xOffs * thisVel,
        y = yOffs * thisVel
      },
      acc = {
        x = 0,
        y = 0
      },
      update = particleUpdateDynamics,
      draw = particleDrawDefColorSize,
      evolve = particleEvolveDef
    }
    table.insert(particles, particle)
  end
  
  local particle = {
    time = 0, 
    life = 0.5,
    pos = {
      x = pos.x,
      y = pos.y,
    },
    vel = {
      x = 0,
      y = 0
    },
    acc = {
      x = 0,
      y = 0
    },
    colorFrom = { r = 255, g = 255, b = 255 },
    colorTo = { r = 255, g = 255, b = 255 },
    sizeFrom = 1,
    sizeTo = 50,
    update = particleUpdateDynamics,
    draw = particleDrawCircleFade,
    evolve = particleEvolveSimple
  }
  
  table.insert(particles, particle)
  
  particle = {
    time = 0, 
    life = 0.5,
    pos = {
      x = pos.x,
      y = pos.y,
    },
    vel = {
      x = 0,
      y = 0
    },
    acc = {
      x = 0,
      y = 0
    },
    colorFrom = { r = 255, g = 255, b = 255 },
    colorTo = { r = 255, g = 204, b = 0 },
    sizeFrom = 1,
    sizeTo = 100,
    update = particleUpdateDynamics,
    draw = particleDrawCircleFade,
    evolve = particleEvolveSimple
  }
  table.insert(particles, particle)
end

function Particles.createNewSmokeEmitter(pos, name)
  table.insert(smokeEmitters, 
    {time = 0, pos = { x = pos.x, y = pos.y }, def = smokeDefs[name], freq = 0.1, radius = 16}
  )
end

function Particles.clearDown()
  smokeEmitters = {}
  particles = {}
end

return Particles