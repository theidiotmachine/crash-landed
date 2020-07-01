local Sound = require 'sound'

local Hud = {}

local hudSprites = {}
local hudSignData = { signType = "", signText = "" }
local hudSignTime = 0
local HUD_SIGN_SHOW_TIME = 0.4
local hudSignUp = false
local hudSignSprites = {}
local hudElemNames = {{"tl", "l", "bl"}, {"t", "c", "b"}, {"tr", "r", "br"}}

local hudDialogUp = false
local hudDialogData = {}
local hudDialogTree = {}
local hudKeyboadState = {}
local hudDialogSelectedOption = 1

local function createSign(thing, imageFile)
  local i=1
  local x = thing.x
  for xi=1, 3 do
    local xd = thing.xd[xi]
    local y = thing.y
    for yi=1, 3 do 
      
      local yd = thing.yd[yi]
      hudSignSprites[thing.name.."_"..hudElemNames[xi][yi]] = {
        quad=love.graphics.newQuad(x, y, xd, yd, imageFile:getDimensions()),
        texture=imageFile,
        w = xd,
        h = yd
      }
      i = i +1
      y = y + yd
    end
    x = x + xd
  end
end

function Hud.setKeyboadState(keyboadState)
  hudKeyboadState = keyboadState
end

function Hud.clearKeyboadState()
  hudKeyboadState = {}
end

function Hud.load()
  
  local imageFile = love.graphics.newImage("assets/art/spritesheet_hud.png")
  local signImageFile = love.graphics.newImage("assets/art/signs industrial.png")
  
  local greenWarn = {
    name = "greenWarn",
    xd = {16, 16, 16},
    yd = {16, 16, 16},
    x = 0,
    y = 0
  }
  
  createSign(greenWarn, signImageFile)
  
  local screen1 = {
    name = "screen1",
    xd = {16, 16, 16},
    yd = {20, 8, 20},
    x = 48,
    y = 0
  }
  
  createSign(screen1, signImageFile)
  
  local arrowc = {
    name = "arrowc",
    xd = {16, 16, 16},
    yd = {16, 16, 16},
    x = 96,
    y = 0
  }
  
  createSign(arrowc, signImageFile)
  
  local arrowl = {
    name = "arrowl",
    xd = {32, 8, 8},
    yd = {16, 16, 16},
    x = 0,
    y = 48
  }
  
  createSign(arrowl, signImageFile)
  
  local arrowr = {
    name = "arrowr",
    xd = {8, 8, 32},
    yd = {16, 16, 16},
    x = 48,
    y = 48
  }
  
  createSign(arrowr, signImageFile)
  
  --[[
  <SubTexture name="hudKey_blue.png" x="384" y="512" width="128" height="128"/><SubTexture name="hudKey_blue_empty.png" x="384" y="384" width="128" height="128"/><SubTexture name="hudKey_green.png" x="384" y="256" width="128" height="128"/><SubTexture name="hudKey_green_empty.png" x="384" y="128" width="128" height="128"/><SubTexture name="hudKey_red.png" x="384" y="0" width="128" height="128"/><SubTexture name="hudKey_red_empty.png" x="256" y="896" width="128" height="128"/><SubTexture name="hudKey_yellow.png" x="256" y="768" width="128" height="128"/><SubTexture name="hudKey_yellow_empty.png" x="256" y="640" width="128" height="128"/><SubTexture name="hudPlayer_green.png" x="256" y="256" width="128" height="128"/><SubTexture name="hudPlayer_pink.png" x="512" y="384" width="128" height="128"/><SubTexture name="hudPlayer_yellow.png" x="256" y="0" width="128" height="128"/><SubTexture name="hudX.png" x="128" y="896" width="128" height="128"/>
  ]]--
  hudSprites["0"] = {
    quad=love.graphics.newQuad(128, 768, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["1"] = {
    quad=love.graphics.newQuad(128, 640, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["2"] = {
    quad=love.graphics.newQuad(128, 512, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["3"] = {
    quad=love.graphics.newQuad(128, 384, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["4"] = {
    quad=love.graphics.newQuad(128, 256, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["5"] = {
    quad=love.graphics.newQuad(128, 128, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["6"] = {
    quad=love.graphics.newQuad(128, 0, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["7"] = {
    quad=love.graphics.newQuad(0, 896, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["8"] = {
    quad=love.graphics.newQuad(0, 768, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["9"] = {
    quad=love.graphics.newQuad(0, 640, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["coin"] = {
    quad=love.graphics.newQuad(0, 512, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["heartEmpty"] = {
    quad=love.graphics.newQuad(0, 384, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["heartFull"] = {
    quad=love.graphics.newQuad(0, 256, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["heartHalf"] = {
    quad=love.graphics.newQuad(0, 128, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudPlayer_beige"] = {
    quad=love.graphics.newQuad(256, 512, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudPlayer_blue"] = {
    quad=love.graphics.newQuad(256, 384, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_blue"] = {
    quad=love.graphics.newQuad(0, 0, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_blue_empty"] = {
    quad=love.graphics.newQuad(256, 128, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_green"] = {
    quad=love.graphics.newQuad(512, 256, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_green_empty"] = {
    quad=love.graphics.newQuad(512, 128, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_red"] = {
    quad=love.graphics.newQuad(512, 0, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_red_empty"] = {
    quad=love.graphics.newQuad(384, 896, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_yellow"] = {
    quad=love.graphics.newQuad(384, 768, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
  hudSprites["hudJewel_yellow_empty"] = {
    quad=love.graphics.newQuad(384, 640, 128, 128, imageFile:getDimensions()),
    texture=imageFile,
    w = 128,
    h = 128
  }
end

function Hud.unload()
  hudSprites = {}
  hudSignSprites = {}
end

function Hud.inSign(signType, signText)
  hudSignUp = true
  if hudSignData.signType == signType and hudSignData.signText == signText then
  else
    hudSignData = { signType = signType, signText = signText }
  end
end

function Hud.gamePreUpdate(dt)
  hudSignUp = false
end

function Hud.gamePostUpdate(dt)
  if hudSignUp then
    hudSignTime = hudSignTime+dt 
    if hudSignTime > HUD_SIGN_SHOW_TIME then
      hudSignTime = HUD_SIGN_SHOW_TIME
    end
  else
    hudSignTime = hudSignTime-dt 
    if hudSignTime < 0 then
      hudSignTime = 0
    end
  end
end

local function drawGems(gems, x, y, s)
  local s = s or 1
  local gemx = x
  local gemy = y
  for _, color in ipairs({'red', 'blue', 'green', 'yellow'}) do
    if gems[color] ~= nil then
      local spriteString = "hudJewel_" .. color
      if gems[color] == false then
        spriteString = spriteString .. "_empty"
      end
      local gem = hudSprites[spriteString]
      love.graphics.draw(gem.texture, gem.quad, gemx, gemy, 0, s, s)
      gemx = gemx + 110 * s
    end
  end
end

function Hud.dialogKeypressed(key, scancode, isrepeat)
  if key == 'up' or key == 'w' then
    hudDialogSelectedOption = hudDialogSelectedOption - 1
    if hudDialogSelectedOption == 0 then
      hudDialogSelectedOption = #hudDialogData.options
    end
  end
  if key == 'down' or key == 's' then
    hudDialogSelectedOption = hudDialogSelectedOption + 1
    if hudDialogSelectedOption > #hudDialogData.options then
      hudDialogSelectedOption = 1
    end
  end
  
  if key == 'return' or key == ' ' then 
    local cb = hudDialogData.options[hudDialogSelectedOption].cb
    if cb then
      cb()
    end
    local newNodeName = hudDialogData.options[hudDialogSelectedOption].dest
    if newNodeName == 'exit' then
      hudKeyboadState.pop()
      hudDialogUp = false
      player.inDialog = false
    else
      hudDialogData = hudDialogTree[newNodeName]
      hudDialogSelectedOption = 1
      local sound = love.math.random(5)
      Sound.playFX("assets/sound/theo-alien-speech" .. sound .. ".ogg")
    end
  end
end

function Hud.inDialog(dialogData)
  if hudDialogUp == false then
    hudDialogTree = dialogData.tree
    hudDialogData = hudDialogTree[dialogData.start]
    hudDialogUp = true
    hudDialogSelectedOption = 1
    player.inDialog = true
    hudKeyboadState.push(function(k, s, r) Hud.dialogKeypressed(k, s, r) end, nil)
    local sound = love.math.random(5)
    Sound.playFX("assets/sound/theo-alien-speech" .. sound .. ".ogg")
  end
end

local function getTextHeight(font, text, textWidth)
  local width, something = font:getWrap(text, textWidth)
  local numLines = 0
  if type(something) == 'number' then
    --old impl
    numLines = something
  else
    --new impl
    numLines = #something
  end
  local lineHeight = fontVecBold32:getHeight()
  local textHeight = numLines * lineHeight
  return textHeight
end

local function drawDialog(game, player)
  local who = hudDialogData.who
  local text = hudDialogData.text 
  local options = hudDialogData.options
  local selectedOption = hudDialogSelectedOption
  local windowWidth  = love.graphics.getWidth()
  local windowHeight  = love.graphics.getHeight()
  
  local face = hudSprites[who]
  
  local blockWidth = 512
  local blockX = (windowWidth - blockWidth)/2
  local border = 24
  local headSize = 128
  local textWidth = blockWidth - border*2
  local textHeight = getTextHeight(fontVecBold32, text, textWidth)
  
  local optionHeights = {}
  local optionsHeight = 0
  for i, option in ipairs(options) do
    local optionHeight = getTextHeight(fontVecBold32, option.text, textWidth)
    optionHeights[i] = optionHeight
    optionsHeight = optionsHeight + optionHeight
  end
  
  local blockHeight = textHeight + border*3 + optionsHeight
  local blockY = (windowHeight - (blockHeight))/2
  
  love.graphics.setColor(0, 0, 0, 128/255)
  love.graphics.rectangle('fill', blockX, blockY, blockWidth, blockHeight)
  
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(face.texture, face.quad, windowWidth/2 - face.w/2, blockY-(face.h))
  
  love.graphics.setFont(fontVecBold32)
  love.graphics.printf(text, blockX + border, blockY + border, textWidth, 'center')
  
  local y = blockY + border*2 + textHeight
  for i, option in ipairs(options) do 
    if i == selectedOption then
      love.graphics.setColor(1, 1, 1)
    else
      love.graphics.setColor(150/255, 150/255, 150/255)
    end
    love.graphics.printf(option.text, blockX + border, y, textWidth)
    y = y + optionHeights[i]
  end
end

function Hud.gameDraw(game, player)
  love.graphics.setColor(255/255, 255/255, 255/255, 255/255)
      
  local windowWidth  = love.graphics.getWidth()
  local windowHeight  = love.graphics.getHeight()
  
  local gemx = 10 
  local gemy = windowHeight - 120
  drawGems(game.state.gems, gemx, gemy)

  --Health bar. Not the finest code I've ever written.
  --First draw the player face
  local face = hudSprites["hudPlayer_beige"]
  love.graphics.draw(face.texture, face.quad, 10, 10)
  
  --Now draw the hearts with something in them
  local remainingHealth = player.health
  local healthx = 120 --this is the x screen coord
  local heartsDrawn = 0
  while remainingHealth > 0 do
    local heart = hudSprites["heartFull"]
    if remainingHealth == 1 then
      heart = hudSprites["heartHalf"]
    end
    
    love.graphics.draw(heart.texture, heart.quad, healthx, 10)
    remainingHealth = remainingHealth - 2
    healthx = healthx + 100
    heartsDrawn = heartsDrawn + 1
  end
  
  --Figure out how much health I haven't drawn by doubling the number of hearts, 
  --and seeing how far away we are away from max, and then draw that
  remainingHealth = player.healthMax - heartsDrawn * 2
  while remainingHealth > 0 do
    local heart = hudSprites["heartEmpty"]
    love.graphics.draw(heart.texture, heart.quad, healthx, 10)
    remainingHealth = remainingHealth - 2
    healthx = healthx + 100
  end
  
  --Coins. First draw the coin symbol
  local coin = hudSprites["coin"]
  love.graphics.draw(coin.texture, coin.quad, windowWidth - 138, 10)
  
  --Now render the money number as a string
  local moneyString = string.format("%d", game.money)
  --Find where to start drawing with lots of horrible hard coded numbers
  local loc = windowWidth - 138 - 90
  --Counting backwards - we are drawing the coins on the right of the screen - draw each letter
  for i = #moneyString, 1, -1 do
    local c = moneyString:sub(i,i)
    --because I keyed the sprites by char, we can just look up the sprite
    local charSprite = hudSprites[c]
    love.graphics.draw(charSprite.texture, charSprite.quad, loc, 4)
    --This is just a guess based on the texture
    loc = loc - 60
  end
  
  --signs
  if hudSignTime > 0 then
    love.graphics.setColor(255/255, 255/255, 255/255, hudSignTime / HUD_SIGN_SHOW_TIME ) 
    
    local tPad = 16
    local bPad = 32
    local lPad = 16
    local rPad = 16
    
    
    local tlSprite = hudSignSprites[hudSignData.signType .. "_tl"]
    local tSprite = hudSignSprites[hudSignData.signType .. "_t"]
    local trSprite = hudSignSprites[hudSignData.signType .. "_tr"]
    local lSprite = hudSignSprites[hudSignData.signType .. "_l"]
    local cSprite = hudSignSprites[hudSignData.signType .. "_c"]
    local rSprite = hudSignSprites[hudSignData.signType .. "_r"]
    local blSprite = hudSignSprites[hudSignData.signType .. "_bl"]
    local bSprite = hudSignSprites[hudSignData.signType .. "_b"]
    local brSprite = hudSignSprites[hudSignData.signType .. "_br"]
    
    local lSpriteW = tlSprite.w
    local rSpriteW = trSprite.w
    
    local tSpriteH = tlSprite.h
    local bSpriteH = blSprite.h
    
    local textWidth = fontVecBold32:getWidth(hudSignData.signText)
    local numLines = 1
    for i in string.gmatch( hudSignData.signText, '\n' ) do
      numLines =  numLines + 1
    end
    
    local textHeight = fontVecBold32:getHeight() * numLines
    
    local textX = (windowWidth - textWidth)/2
    local textY = windowHeight - (textHeight+bPad+bSpriteH+16)
    local xScale = (textWidth+lPad+rPad) / tSprite.w
    local yScale = (textHeight+tPad+bPad) / lSprite.h 
    
    love.graphics.draw(tlSprite.texture, tlSprite.quad, textX - (lPad + lSpriteW),  textY - (tPad + tSpriteH))
    
    love.graphics.draw(tSprite.texture, tSprite.quad,   textX - lPad,               textY - (tPad + tSpriteH),  0, xScale, 1)
    
    love.graphics.draw(trSprite.texture, trSprite.quad, textX + textWidth + rPad,   textY - (tPad + tSpriteH))
    
    love.graphics.draw(lSprite.texture, lSprite.quad,   textX - (lPad + lSpriteW),  textY - tPad,               0, 1, yScale)
    
    love.graphics.draw(cSprite.texture, cSprite.quad,   textX - lPad,               textY - tPad,               0, xScale, yScale)
    
    love.graphics.draw(rSprite.texture, rSprite.quad,   textX + textWidth + rPad,   textY - tPad,               0, 1, yScale)
    
    love.graphics.draw(blSprite.texture, blSprite.quad, textX - (lPad + lSpriteW),  textY + textHeight + bPad)
    
    love.graphics.draw(bSprite.texture, bSprite.quad,   textX - lPad,               textY + textHeight + bPad,  0, xScale, 1)
    
    love.graphics.draw(brSprite.texture, brSprite.quad, textX + textWidth + rPad,   textY + textHeight + bPad)
    
    love.graphics.setFont(fontVecBold32)
    
    love.graphics.print(hudSignData.signText, textX, textY)
  end
  
  if hudDialogUp then
    drawDialog(game, player)
  end
end

function Hud.worldDraw(world, saucer)
  local windowWidth  = love.graphics.getWidth()
  local windowHeight  = love.graphics.getHeight()

  local island = worldMap.islands[saucer.destMapLoc.x][saucer.destMapLoc.y]
  love.graphics.setFont(fontVecBold32)
  local title = island.title
  local textWidth = fontVecBold32:getWidth(title)
  local blockWidth = math.max(textWidth + 32*2, 512)
  
  local blockX = (windowWidth - blockWidth) / 2
  local textX = (windowWidth - textWidth) / 2
  local textY = windowHeight/2 - 200
  local rectH = 32*3
  if island.state then
    textY = textY - 64
    rectH = rectH + 64
  end
  
  love.graphics.setColor(0, 0, 0, 128/255)
  love.graphics.rectangle('fill', blockX, textY - 32, blockWidth, rectH )
  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.print(title, textX, textY)
  
  if island.state then
    drawGems(island.state.gems, (windowWidth/2 - 110) - 8, textY + 48, 0.5)
  end
end

return Hud