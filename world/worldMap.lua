local Particles = require 'particles'

local WorldMap = {
  --[[
  world looks like this
  ++o++o++
  where o is 192 wide and + is 96 wide.
  
  ]]--
  CHUNK_SIZE = (192+96*2),
}

local FeatureShadowOffsets = {
  shipCrash = -10,
  grassWater = 32,
}

function WorldMap:update(dt)
end

function WorldMap:draw(cx, cy)
  love.graphics.setColor(255, 255, 255, 255)
  
  for x, colData in ipairs(self.islands) do
    for y, datum in ipairs(colData) do
      love.graphics.draw(datum.sprite.texture, 
        datum.sprite.quad, 
        datum.pos.x + cx - datum.sprite.w/2, 
        datum.pos.y + cy - datum.sprite.w/2)
      if datum.featureSprite then
        love.graphics.draw(datum.featureSprite.texture, 
          datum.featureSprite.quad, 
          datum.pos.x + cx - datum.featureSprite.w/2, 
          datum.pos.y + cy - datum.featureSprite.h/2)
      end
    end
  end
  
    
  for _, datum in pairs(self.barriers) do 
    love.graphics.setColor(255, 255, 255, 255)
  
    love.graphics.draw(datum.shadowSprite.texture, 
        datum.shadowSprite.quad, 
        datum.pos.x + cx - datum.shadowSprite.w/2, 
        datum.pos.y + cy - datum.shadowSprite.h/2 + 64
      )
      
    love.graphics.draw(datum.sprite.texture, 
        datum.sprite.quad, 
        datum.pos.x + cx - datum.sprite.w/2, 
        datum.pos.y + cy - datum.sprite.h/2
      )
      
    local zapSprite = datum.zapSprites[math.random(#datum.zapSprites)]
    love.graphics.draw(zapSprite.texture, 
        zapSprite.quad, 
        datum.pos.x + cx - zapSprite.w/2, 
        datum.pos.y + cy - zapSprite.h/2 - 40
      )
    zapSprite = datum.zapSprites[math.random(#datum.zapSprites)]
    love.graphics.draw(zapSprite.texture, 
        zapSprite.quad, 
        datum.pos.x + cx - zapSprite.w/2, 
        datum.pos.y + cy - zapSprite.h/2 + 40
        )
  end
end

function WorldMap:isValidLoc(x, y)
  local forX = self.islands[x]
  if not forX then return false end
  return forX[y] ~= nil
end

function WorldMap:isValidDest(x, y)
  local forX = self.islands[x]
  if not forX then 
    return 'sea'
  elseif forX[y] ~= nil then
    for _, barrier in pairs(self.barriers) do
      if barrier.to.x == x and barrier.to.y == y then
        return 'barrier', barrier.pos.x, barrier.pos.y
      end
    end
    return 'yes'
  else
    return 'sea'
  end
end

function WorldMap.getLoc(x, y)
  return {x = x*WorldMap.CHUNK_SIZE, y = y*WorldMap.CHUNK_SIZE}
end

function WorldMap.fromWorldState(sprites, worldStateData)
  local runIslands = {}
  for worldStateName, datum in pairs(worldStateData.islands) do
    local x = datum.pos.x
    if runIslands[x] == nil then
      runIslands[x] = {}
    end
    
    local y = datum.pos.y
    local pos = WorldMap.getLoc(x,y) 
    runIslands[x][y] = {
      pos = pos, 
      sprite = sprites[datum.stuff .. "Oct"], 
      featureSprite = sprites[datum.feature], 
      --level = datum.level,
      title = datum.title,
      transition = datum.transition,
      featureShadowOffset = 0,
      state = datum.state,
      worldStateName = worldStateName
    }
    
    if datum.smoke then
      Particles.createNewSmokeEmitter(pos, 'small')
    end
    
    if FeatureShadowOffsets[datum.feature] then
      runIslands[x][y].featureShadowOffset = FeatureShadowOffsets[datum.feature]
    end
  end
  
  local runBarriers = {}
  for name, datum in pairs(worldStateData.barriers) do    
    local from = WorldMap.getLoc(datum.from.x, datum.from.y)
    local to = WorldMap.getLoc(datum.to.x, datum.to.y)
    local pos = {x = (from.x + to.x)/2, y = (from.y + to.y)/2}
    table.insert(runBarriers, {pos = pos, sprite = sprites["barrier" .. datum.color], from = datum.from, to = datum.to,
        zapSprites = {sprites['zap1'], sprites['zap2'], sprites['zap3'], sprites['zap4']}, 
        shadowSprite = sprites['barrierShadow']
    })
  end
   
  return {
    islands = runIslands,
    barriers = runBarriers,
    update = WorldMap.update,
    draw = WorldMap.draw,
    isValidDest = WorldMap.isValidDest
  }
end

return WorldMap