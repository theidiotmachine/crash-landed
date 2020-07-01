local hc_init = {}

local Polygon = require 'HC.polygon'
local Object = require 'game.object'
local STIUtils = require 'sti.utils'
local customImages = {}

local function mergeIntoColpolys(colpolys, stuff, colType, newSimpleShape)
  if not colpolys[stuff] then
    colpolys[stuff] = {}
  end
  
  local colpolysForStuff = colpolys[stuff] 
  
  local found = false
  for i, colpoly in pairs(colpolysForStuff) do
    local newcolpoly = colpoly:mergedWith(newSimpleShape)
    if newcolpoly then
      found = true
      newcolpoly.colType = colType
      colpolysForStuff[i] = newcolpoly
      break
    end
  end
  if not found then
    newSimpleShape.colType = colType
    table.insert(colpolysForStuff, newSimpleShape)
  end
end

--[[
I confess to copying and pasting this from STI.
]]--
local function processFlags(gid)
  local bit31   = 2147483648
	local bit30   = 1073741824
	local bit29   = 536870912
	local flipX   = false
	local flipY   = false
	local flipD   = false
	local realgid = gid

	if realgid >= bit31 then
		realgid = realgid - bit31
		flipX   = true
	end

	if realgid >= bit30 then
		realgid = realgid - bit30
		flipY   = true
	end

	if realgid >= bit29 then
		realgid = realgid - bit29
		flipD   = true
	end
  local r = 0
  local sx = 1
  local sy = 1
  
  if flipX then
		if flipY and flipD then
			r  = math.rad(-90)
			sy = -1
		elseif flipY then
			sx = -1
			sy = -1
		elseif flipD then
			r = math.rad(90)
		else
			sx = -1
		end
	elseif flipY then
		if flipD then
			r = math.rad(-90)
		else
			sy = -1
		end
	elseif flipD then
		r  = math.rad(90)
		sy = -1
	end
  return realgid, r, sx, sy
end

function hc_init.buildShapeFromMapLayers(game, scriptName, textName, map)
  
  local HC = game.HC
  --this is all a bit hardcody
  customImages['water.png'] = love.graphics.newImage("assets/art/water.png")
  customImages['waterTop_high.png'] = love.graphics.newImage("assets/art/waterTop_high.png")
  customImages['waterTop_low.png'] = love.graphics.newImage("assets/art/waterTop_low.png")
  for _, image in pairs(customImages) do
    image:setWrap("repeat", "repeat")
  end
  
  local colpolys = {}
  local objects = {}
  local script = love.filesystem.load(scriptName)()
  map.script = script
  
  local text = love.filesystem.load(textName)()
  map.text = text
  map.script.text = text

  
  for layerIndex, layer in ipairs(map.layers) do
    --yes, the odd collidable thing is for when it's not marked
    if layer.type == "tilelayer" then
      
      local layerCollidable = layer.properties.collidable or layer.properties.collidable == nil
      for gid, tiles in pairs(map.tileInstances) do
        local tile = map.tiles[gid]
        local tileset = map.tilesets[tile.tileset]

        for _, instance in ipairs(tiles) do
          if instance.layer == layer then
            
            local tiledef = map.tiles[instance.gid]
            local stuff = "unknown"
            local colType = "static"
            local collidable = layerCollidable
            if tiledef and tiledef.properties then
              if tiledef.properties.stuff then
                stuff = tiledef.properties.stuff
              end
              if tiledef.properties.colType then
                colType = tiledef.properties.colType
              end
              if tiledef.properties.collidable then
                collidable = tiledef.properties.colType
              end
              
            end
            
            if collidable then
              
              if tiledef.objectGroup then
                for _, object in pairs(tiledef.objectGroup.objects) do
                --local object = tiledef.objectGroup.objects[1] 
                local shape = object.shape
                local xoffs = object.x
                local yoffs = object.y
                if shape == "polygon" then
                  local verts = object.polygon
                  
                  local finalVerts = {}
                  for _, vert in ipairs(verts) do
                    table.insert(finalVerts, instance.x + vert.x + xoffs)
                    table.insert(finalVerts, instance.y + vert.y + yoffs)
                  end
                  mergeIntoColpolys(colpolys, stuff, colType, Polygon(unpack(finalVerts)))
                elseif shape == "rectangle" then
                  local xoffs = object.x
                  local yoffs = object.y
                  local w = object.width
                  local h = object.height
                  mergeIntoColpolys(colpolys, stuff, colType, Polygon(
                    instance.x + xoffs,     instance.y + yoffs, 
                    instance.x + xoffs + w, instance.y + yoffs, 
                    instance.x + xoffs + w, instance.y + yoffs + h, 
                    instance.x + xoffs,     instance.y + yoffs + h
                  ))
                end
                end
              else
                mergeIntoColpolys(colpolys, stuff, colType, Polygon(
                  instance.x, instance.y, 
                  instance.x + tileset.tilewidth, instance.y, 
                  instance.x + tileset.tilewidth, instance.y + tileset.tileheight, 
                  instance.x, instance.y + tileset.tileheight))
              end
            end
          end
          if layer.properties.layerType == "liquid" then
            --map:convertToCustomLayer(layerIndex)
            local i = 3
            local endX      = layer.width
            local endY      = layer.height
            local tileW     = map.tilewidth
            local tileH     = map.tileheight
            
            
            layer.quadOdd = love.graphics.newQuad(0, 0, 32, 32, 32, 32)
            layer.quadEven = love.graphics.newQuad(0, 0, 32, 32, 32, 32)
            layer.shift = 0
            
            function layer:update(dt)
                layer.shift = layer.shift + dt * 20
                if layer.shift > 128 then
                  layer.shift = 0
                end
                layer.quadOdd = love.graphics.newQuad(layer.shift, 0, 128, 128, 128, 128)
                layer.quadEven = love.graphics.newQuad(128 - layer.shift, 0, 128, 128, 128, 128)
            end
            
            function layer.draw(self, tx, ty, sx, sy)
              --local oldR, oldG, oldB, oldA = love.graphics.getColor()
              --love.graphics.setColor(1, 1, 1, 1)
              local windowWidth  = love.graphics.getWidth()
              local windowHeight  = love.graphics.getHeight()
              for y = 1, endY, 1 do
                for x = 1, endX, 1 do
                  local tile = layer.data[y][x]

                  if tile then
                    local tileset = tile.tileset
                    --local image   = map.tilesets[tile.tileset].image
                    local image = customImages[tile.properties.imageName]
                    local tileX, tileY
                    tileX = (x - 1) * tileW + tile.offset.x
                    tileY = (y - 1) * tileH + tile.offset.y
                    if 
                      tx + tileX + tileW > 0 
                      and ty + tileY + tileH > 0 
                      and tx + tileX - tileW < windowWidth 
                      and ty + tileY - tileH < windowHeight 
                      then
                        
                    tileX, tileY = STIUtils.compensate(tile, tileX, tileY, tileW, tileH)
                    
                    if y % 2 == 0 then 
                      love.graphics.draw(image, layer.quadEven, tileX, tileY)
                    else
                      love.graphics.draw(image, layer.quadOdd, tileX, tileY)
                    end
                    end
                  end
                end
              end
              --love.graphics.setColor(oldR, oldG, oldB, oldA)
            end
          end
        end
      end
    elseif layer.type == "objectgroup" then
      for _, object in ipairs(layer.objects) do
        
        local bit29   = 536870912
        local gid = object.gid
        local sx = 1
        local sy = 1
        local r = 0

        if gid then
          if gid >= bit29 then
            gid, r, sx, sy = processFlags(gid)
            object.r = r
            object.sx = sx
            object.sy = sy
          end
          
        end
        
        local tile = map.tiles[gid] 
        if tile and tile.type then
          if tile.type ~= "" then
            table.insert(objects, Object.objectFactory(tile.type, game, object, tile, map))
          end
        else
          table.insert(objects, Object.objectFactory(object.type, game, object, object, map))
        end
      end
      
    elseif layer.type == "imagelayer" then
      if layer.properties.floating then 
        local image = layer.image
                
        map:convertToCustomLayer(layerIndex)
        layer.image = image
        local width = image:getWidth()
        local height = image:getHeight()
        
        function layer.draw()
          -- This little lambda draws our background image. Floating background images are going to be 
          -- statically rendered behind the game, and not move with the level.
          
          -- So, we draw repeated copies of the image from left to right until we have filled the window;
          -- and we draw them such that they are centred vertically, because that's where the interesting 
          -- stuff tends to be. All the stuff with push and pop is because the map uses a matrix stack 
          -- and we want to ignore that, and just draw on the window untransformed. You can read the love
          -- docs and figure it out.
          local oldR, oldG, oldB, oldA = love.graphics.getColor()
          love.graphics.setColor(ambient.bgColor.r, ambient.bgColor.g, ambient.bgColor.b, 255)
          local windowWidth  = love.graphics.getWidth()
          local windowHeight  = love.graphics.getHeight()
          local y = math.max((height - windowHeight) / 2, 0)
          love.graphics.push()
          love.graphics.origin()
          for x = 0, windowWidth, width do
            love.graphics.draw(image, x, -y)
          end
          love.graphics.pop()
          love.graphics.setColor(oldR, oldG, oldB, oldA)
        end
      end
    
    end
  end
  
  local groundColShapes = {}
  for stuff, colpolysForStuff in pairs(colpolys) do
    for _, colpoly in pairs(colpolysForStuff) do
      local p = HC.polygon(colpoly)
      p.user = {stuff = stuff, type = "ground", properties = { colType = colpoly.colType }}
      table.insert(groundColShapes, p)
    end
  end
  
  Object.postLoadInitAll()
  
  local layersToRemove = {}
  for _, layer in ipairs(map.layers) do
    if layer.type == "objectgroup" or (layer.type == "imagelayer" and layer.properties.floating) then
      layersToRemove[layer.name] = true
    end
  end
  
  for layerToRemove, _ in pairs(layersToRemove) do 
    map:removeLayer(layerToRemove)
  end
  
  return groundColShapes
end

return hc_init