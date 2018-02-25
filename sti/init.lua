--- Simple and fast Tiled map loader and renderer.
-- @module sti
-- @author Landon Manning
-- @copyright 2016
-- @license MIT/X11

local STI = {
	_LICENSE     = "MIT/X11",
	_URL         = "https://github.com/karai17/Simple-Tiled-Implementation",
	_VERSION     = "0.18.2.1",
	_DESCRIPTION = "Simple Tiled Implementation is a Tiled Map Editor library designed for the *awesome* LÖVE framework.",
	cache        = {}
}
STI.__index = STI

local cwd   = (...):gsub('%.init$', '') .. "."
local utils = require(cwd .. "utils")
local ceil  = math.ceil
local floor = math.floor
local lg    = require(cwd .. "graphics")
local Map   = {}
Map.__index = Map

local function new(map, plugins, ox, oy)
	local dir = ""

	if type(map) == "table" then
		map = setmetatable(map, Map)
	else
		-- Check for valid map type
		local ext = map:sub(-4, -1)
		assert(ext == ".lua", string.format(
			"Invalid file type: %s. File must be of type: lua.",
			ext
		))

		-- Get directory of map
		dir = map:reverse():find("[/\\]") or ""
		if dir ~= "" then
			dir = map:sub(1, 1 + (#map - dir))
		end

		-- Load map
		map = setmetatable(love.filesystem.load(map)(), Map)
	end

	map:init(dir, plugins, ox, oy)

	return map
end

--- Instance a new map.
-- @param map Path to the map file or the map table itself
-- @param plugins A list of plugins to load
-- @param ox Offset of map on the X axis (in pixels)
-- @param oy Offset of map on the Y axis (in pixels)
-- @return table The loaded Map
function STI.__call(_, map, plugins, ox, oy)
	return new(map, plugins, ox, oy)
end

--- Flush image cache.
function STI:flush()
	self.cache = {}
end

--- Map object

--- Instance a new map
-- @param path Path to the map file
-- @param plugins A list of plugins to load
-- @param ox Offset of map on the X axis (in pixels)
-- @param oy Offset of map on the Y axis (in pixels)
function Map:init(path, plugins, ox, oy)
	if type(plugins) == "table" then
		self:loadPlugins(plugins)
	end

	self:resize()
	self.objects       = {}
	self.tiles         = {}
	self.tileInstances = {}
	self.drawRange     = {
		sx = 1,
		sy = 1,
		ex = self.width,
		ey = self.height,
	}
	self.offsetx = ox or 0
	self.offsety = oy or 0

	-- Set tiles, images
	local gid = 1
	for i, tileset in ipairs(self.tilesets) do
		assert(tileset.image, "STI does not support Tile Collections.\nYou need to create a Texture Atlas.")

		-- Cache images
		if lg.isCreated then
			local formatted_path = utils.format_path(path .. tileset.image)

			if not STI.cache[formatted_path] then
				utils.fix_transparent_color(tileset, formatted_path)
				utils.cache_image(STI, formatted_path, tileset.image)
			else
				tileset.image = STI.cache[formatted_path]
			end
		end

		gid = self:setTiles(i, tileset, gid)
	end

	-- Set layers
	for _, layer in ipairs(self.layers) do
		self:setLayer(layer, path)
	end
end

--- Load plugins
-- @param plugins A list of plugins to load
function Map:loadPlugins(plugins)
	for _, plugin in ipairs(plugins) do
		local pluginModulePath = cwd .. 'plugins.' .. plugin
		local ok, pluginModule = pcall(require, pluginModulePath)
		if ok then
			for k, func in pairs(pluginModule) do
				if not self[k] then
					self[k] = func
				end
			end
		end
	end
end

--- Create Tiles
-- @param index Index of the Tileset
-- @param tileset Tileset data
-- @param gid First Global ID in Tileset
-- @return number Next Tileset's first Global ID
function Map:setTiles(index, tileset, gid)
	local quad    = lg.newQuad
	local imageW  = tileset.imagewidth
	local imageH  = tileset.imageheight
	local tileW   = tileset.tilewidth
	local tileH   = tileset.tileheight
	local margin  = tileset.margin
	local spacing = tileset.spacing
	local w       = utils.get_tiles(imageW, tileW, margin, spacing)
	local h       = utils.get_tiles(imageH, tileH, margin, spacing)

	for y = 1, h do
		for x = 1, w do
			local id    = gid - tileset.firstgid
			local quadX = (x - 1) * tileW + margin + (x - 1) * spacing
			local quadY = (y - 1) * tileH + margin + (y - 1) * spacing
			local properties, terrain, animation, objectGroup, tiletype

			for _, tile in pairs(tileset.tiles) do
				if tile.id == id then
					properties  = tile.properties
					animation   = tile.animation
					objectGroup = tile.objectGroup
          tiletype    = tile.type

					if tile.terrain then
						terrain = {}

						for i = 1, #tile.terrain do
							terrain[i] = tileset.terrains[tile.terrain[i] + 1]
						end
					end
          --*_* added a break!
          break
				end
			end

			local tile = {
				id          = id,
				gid         = gid,
				tileset     = index,
				quad        = quad(
					quadX,  quadY,
					tileW,  tileH,
					imageW, imageH
				),
				properties  = properties or {},
        type        = tiletype or "",
				terrain     = terrain,
				animation   = animation,
				objectGroup = objectGroup,
				frame       = 1,
				time        = 0,
				width       = tileW,
				height      = tileH,
				sx          = 1,
				sy          = 1,
				r           = 0,
				offset      = tileset.tileoffset,
        image       = tileset.image,
        tilesetObject= tileset
			}

			self.tiles[gid] = tile
			gid             = gid + 1
		end
	end

	return gid
end

--- Create Layers
-- @param layer Layer data
-- @param path (Optional) Path to an Image Layer's image
function Map:setLayer(layer, path)
	if layer.encoding then
		if layer.encoding == "base64" then
			assert(require "ffi", "Compressed maps require LuaJIT FFI.\nPlease Switch your interperator to LuaJIT or your Tile Layer Format to \"CSV\".")
			local fd  = love.filesystem.newFileData(layer.data, "data", "base64"):getString()

			if not layer.compression then
				layer.data = utils.get_decompressed_data(fd)
			else
				assert(love.math.decompress, "zlib and gzip compression require LOVE 0.10.0+.\nPlease set your Tile Layer Format to \"Base64 (uncompressed)\" or \"CSV\".")

				if layer.compression == "zlib" then
					local data = love.math.decompress(fd, "zlib")
					layer.data = utils.get_decompressed_data(data)
				end

				if layer.compression == "gzip" then
					local data = love.math.decompress(fd, "gzip")
					layer.data = utils.get_decompressed_data(data)
				end
			end
		end
	end

	layer.x      = (layer.x or 0) + layer.offsetx + self.offsetx
	layer.y      = (layer.y or 0) + layer.offsety + self.offsety
	layer.update = function() end

	if layer.type == "tilelayer" then
		self:setTileData(layer)
		self:setSpriteBatches(layer)
		layer.draw = function() self:drawTileLayer(layer) end
	elseif layer.type == "objectgroup" then
		self:setObjectData(layer)
		self:setObjectCoordinates(layer)
		self:setObjectSpriteBatches(layer)
		layer.draw = function() self:drawObjectLayer(layer) end
	elseif layer.type == "imagelayer" then
		layer.draw = function() self:drawImageLayer(layer) end

		if layer.image ~= "" then
			local formatted_path = utils.format_path(path .. layer.image)
			if not STI.cache[formatted_path] then
				utils.cache_image(STI, formatted_path)
			end

			layer.image  = STI.cache[formatted_path]
			layer.width  = layer.image:getWidth()
			layer.height = layer.image:getHeight()
		end
	end

	self.layers[layer.name] = layer
end

--- Add Tiles to Tile Layer
-- @param layer The Tile Layer
function Map:setTileData(layer)
	local i   = 1
	local map = {}

	for y = 1, layer.height do
		map[y] = {}
		for x = 1, layer.width do
			local gid = layer.data[i]

			if gid > 0 then
				map[y][x] = self.tiles[gid] or self:setFlippedGID(gid)
			end

			i = i + 1
		end
	end

	layer.data = map
end

--- Add Objects to Layer
-- @param layer The Object Layer
function Map:setObjectData(layer)
	for _, object in ipairs(layer.objects) do
		object.layer            = layer
		self.objects[object.id] = object
	end
end

--- Correct position and orientation of Objects in an Object Layer
-- @param layer The Object Layer
function Map:setObjectCoordinates(layer)
	for _, object in ipairs(layer.objects) do
		local x   = layer.x + object.x
		local y   = layer.y + object.y
		local w   = object.width
		local h   = object.height
		local r   = object.rotation
		local cos = math.cos(math.rad(r))
		local sin = math.sin(math.rad(r))

		if object.shape == "rectangle" and not object.gid then
			object.rectangle = {}

			local vertices = {
				{ x=x,     y=y     },
				{ x=x + w, y=y     },
				{ x=x + w, y=y + h },
				{ x=x,     y=y + h },
			}

			for _, vertex in ipairs(vertices) do
				vertex.x, vertex.y = utils.rotate_vertex(self, vertex, x, y, cos, sin)
				table.insert(object.rectangle, { x = vertex.x, y = vertex.y })
			end
		elseif object.shape == "ellipse" then
			object.ellipse = {}
			local vertices = utils.convert_ellipse_to_polygon(x, y, w, h)

			for _, vertex in ipairs(vertices) do
				vertex.x, vertex.y = utils.rotate_vertex(self, vertex, x, y, cos, sin)
				table.insert(object.ellipse, { x = vertex.x, y = vertex.y })
			end
		elseif object.shape == "polygon" then
			for _, vertex in ipairs(object.polygon) do
				vertex.x           = vertex.x + x
				vertex.y           = vertex.y + y
				vertex.x, vertex.y = utils.rotate_vertex(self, vertex, x, y, cos, sin)
			end
		elseif object.shape == "polyline" then
			for _, vertex in ipairs(object.polyline) do
				vertex.x           = vertex.x + x
				vertex.y           = vertex.y + y
				vertex.x, vertex.y = utils.rotate_vertex(self, vertex, x, y, cos, sin)
			end
		end
	end
end

--- Batch Tiles in Tile Layer for improved draw speed
-- @param layer The Tile Layer
function Map:setSpriteBatches(layer)
	local newBatch = lg.newSpriteBatch
	local tileW    = self.tilewidth
	local tileH    = self.tileheight
	local batches  = {}

	if self.orientation == "orthogonal" or self.orientation == "isometric" then
		local startX     = 1
		local startY     = 1
		local endX       = layer.width
		local endY       = layer.height
		local incrementX = 1
		local incrementY = 1

		-- Determine order to add tiles to sprite batch
		-- Defaults to right-down
		if self.renderorder == "right-up" then
			startX, endX, incrementX = startX, endX,  1
			startY, endY, incrementY = endY, startY, -1
		elseif self.renderorder == "left-down" then
			startX, endX, incrementX = endX, startX, -1
			startY, endY, incrementY = startY, endY,  1
		elseif self.renderorder == "left-up" then
			startX, endX, incrementX = endX, startX, -1
			startY, endY, incrementY = endY, startY, -1
		end

		for y = startY, endY, incrementY do
			for x = startX, endX, incrementX do
				local tile = layer.data[y][x]

				if tile then
					local tileset = tile.tileset
					local image   = self.tilesets[tile.tileset].image

					batches[tileset] = batches[tileset] or newBatch(image, layer.width * layer.height)

					local batch = batches[tileset]
					local tileX, tileY

					if self.orientation == "orthogonal" then
						tileX = (x - 1) * tileW + tile.offset.x
						tileY = (y - 1) * tileH + tile.offset.y
						tileX, tileY = utils.compensate(tile, tileX, tileY, tileW, tileH)
					else
						tileX = (x - y) * (tileW / 2) + tile.offset.x + layer.width * tileW / 2 - self.tilewidth / 2
						tileY = (x + y - 2) * (tileH / 2) + tile.offset.y
					end

					local tab = {
						layer = layer,
						gid   = tile.gid,
						x     = tileX,
						y     = tileY,
						r     = tile.r,
						oy    = 0
					}

					if batch then
						tab.batch = batch
						tab.id = batch:add(tile.quad, tileX, tileY, tile.r, tile.sx, tile.sy)
					end

					self.tileInstances[tile.gid] = self.tileInstances[tile.gid] or {}
					table.insert(self.tileInstances[tile.gid], tab)
				end
			end
		end
	else
		local sideLen = self.hexsidelength or 0

		if self.staggeraxis == "y" then
			for y = 1, layer.height do
				for x = 1, layer.width do
					local tile = layer.data[y][x]

					if tile then
						local tileset = tile.tileset
						local image   = self.tilesets[tile.tileset].image

						batches[tileset] = batches[tileset] or newBatch(image, layer.width * layer.height)

						local batch = batches[tileset]
						local tileX, tileY

						if self.staggerindex == "odd" then
							if y % 2 == 0 then
								tileX = (x - 1) * tileW + tileW / 2 + tile.offset.x
							else
								tileX = (x - 1) * tileW + tile.offset.x
							end
						else
							if y % 2 == 0 then
								tileX = (x - 1) * tileW + tile.offset.x
							else
								tileX = (x - 1) * tileW + tileW / 2 + tile.offset.x
							end
						end

						local rowH = tileH - (tileH - sideLen) / 2
						tileY = (y - 1) * rowH + tile.offset.y

						local tab = {
							layer = layer,
							gid   = tile.gid,
							x     = tileX,
							y     = tileY,
							r     = tile.r,
							oy    = 0
						}

						if batch then
							tab.batch = batch
							tab.id = batch:add(tile.quad, tileX, tileY, tile.r, tile.sx, tile.sy)
						end

						self.tileInstances[tile.gid] = self.tileInstances[tile.gid] or {}
						table.insert(self.tileInstances[tile.gid], tab)
					end
				end
			end
		else
			local i = 0
			local _x

			if self.staggerindex == "odd" then
				_x = 1
			else
				_x = 2
			end

			while i < layer.width * layer.height do
				for _y = 1, layer.height + 0.5, 0.5 do
					local y = floor(_y)

					for x = _x, layer.width, 2 do
						i = i + 1
						local tile = layer.data[y][x]

						if tile then
							local tileset = tile.tileset
							local image   = self.tilesets[tile.tileset].image

							batches[tileset] = batches[tileset] or newBatch(image, layer.width * layer.height)

							local batch = batches[tileset]
							local tileX, tileY

							if self.staggerindex == "odd" then
								if x % 2 == 0 then
									tileY = (y - 1) * tileH + tileH / 2 + tile.offset.y
								else
									tileY = (y - 1) * tileH + tile.offset.y
								end
							else
								if x % 2 == 0 then
									tileY = (y - 1) * tileH + tile.offset.y
								else
									tileY = (y - 1) * tileH + tileH / 2 + tile.offset.y
								end
							end

							local colW = tileW - (tileW - sideLen) / 2
							tileX = (x - 1) * colW + tile.offset.x

							local tab = {
								layer = layer,
								gid   = tile.gid,
								x     = tileX,
								y     = tileY,
								r     = tile.r,
								oy    = 0
							}

							if batch then
								tab.batch = batch
								tab.id = batch:add(tile.quad, tileX, tileY, tile.r, tile.sx, tile.sy)
							end

							self.tileInstances[tile.gid] = self.tileInstances[tile.gid] or {}
							table.insert(self.tileInstances[tile.gid], tab)
						end
					end

					if _x == 1 then
						_x = 2
					else
						_x = 1
					end
				end
			end
		end
	end

	layer.batches = batches
end

--- Batch Tiles in Object Layer for improved draw speed
-- @param layer The Object Layer
function Map:setObjectSpriteBatches(layer)
	local newBatch = lg.newSpriteBatch
	local tileW    = self.tilewidth
	local tileH    = self.tileheight
	local batches  = {}

	if layer.draworder == "topdown" then
		table.sort(layer.objects, function(a, b)
			return a.y + a.height < b.y + b.height
		end)
	end

	for _, object in ipairs(layer.objects) do
		if object.gid then
			local tile    = self.tiles[object.gid] or self:setFlippedGID(object.gid)
			local tileset = tile.tileset
			local image   = self.tilesets[tile.tileset].image

			batches[tileset] = batches[tileset] or newBatch(image)

			local batch = batches[tileset]
			local tileX = object.x + tile.offset.x
			local tileY = object.y + tile.offset.y - tile.height
			local tileR = math.rad(object.rotation)
			local oy    = 0

			-- Compensation for scale/rotation shift
			if tile.sx == 1 and tile.sy == 1 then
				if tileR ~= 0 then
					tileY = tileY + tileH
					oy    = tileH
				end
			else
				if tile.sx < 0 then tileX = tileX + tileW end
				if tile.sy < 0 then tileY = tileY + tileH end
				if tileR   > 0 then tileX = tileX + tileW end
				if tileR   < 0 then tileY = tileY + tileH end
			end

			local tab = {
				layer = layer,
				gid   = tile.gid,
				x     = tileX,
				y     = tileY,
				r     = tileR,
				oy    = oy
			}

			if batch then
				tab.batch = batch
				tab.id = batch:add(tile.quad, tileX, tileY, tileR, tile.sx, tile.sy, 0, oy)
			end

			self.tileInstances[tile.gid] = self.tileInstances[tile.gid] or {}
			table.insert(self.tileInstances[tile.gid], tab)
		end
	end

	layer.batches = batches
end

--- Create a Custom Layer to place userdata in (such as player sprites)
-- @param name Name of Custom Layer
-- @param index Draw order within Layer stack
-- @return table Custom Layer
function Map:addCustomLayer(name, index)
	index = index or #self.layers + 1
	local layer = {
      type       = "customlayer",
      name       = name,
      visible    = true,
      opacity    = 1,
      properties = {},
    }

	function layer.draw() end
	function layer.update() end

	table.insert(self.layers, index, layer)
	self.layers[name] = self.layers[index]

	return layer
end

--- Convert another Layer into a Custom Layer
-- @param index Index or name of Layer to convert
-- @return table Custom Layer
function Map:convertToCustomLayer(index)
	local layer = assert(self.layers[index], "Layer not found: " .. index)

	layer.type     = "customlayer"
	layer.x        = nil
	layer.y        = nil
	layer.width    = nil
	layer.height   = nil
	layer.encoding = nil
	layer.data     = nil
	layer.objects  = nil
	layer.image    = nil

	function layer.draw() end
	function layer.update() end

	return layer
end

--- Remove a Layer from the Layer stack
-- @param index Index or name of Layer to convert
function Map:removeLayer(index)
  --*_*
--	local layer = assert(self.layers[index], "Layer not found: " .. index)
  local layer = nil --self.layers[index]
  if type(index) == "number" then
    layer = assert(self.layers[index], "Layer not found: " .. index)
  end

 
	if type(index) == "string" then
		for i, l in ipairs(self.layers) do
			if l.name == index then
				table.remove(self.layers, i)
				self.layers[index] = nil
        --*_*
        layer = l
				break
			end
		end
	else
		local name = self.layers[index].name
		table.remove(self.layers, index)
		self.layers[name] = nil
	end

	-- Remove tile instances
	if layer.batches then
		for _, tiles in pairs(self.tileInstances) do
			for i = #tiles, 1, -1 do
				local tile = tiles[i]
				if tile.layer == layer then
					table.remove(tiles, i)
				end
			end
		end
	end

	-- Remove objects
	if layer.objects then
		for i, object in pairs(self.objects) do
			if object.layer == layer then
				self.objects[i] = nil
			end
		end
	end
end

--- Animate Tiles and update every Layer
-- @param dt Delta Time
function Map:update(dt)
	for _, tile in pairs(self.tiles) do
		local update = false

		if tile.animation then
			tile.time = tile.time + dt * 1000

			while tile.time > tonumber(tile.animation[tile.frame].duration) do
				update     = true
				tile.time  = tile.time  - tonumber(tile.animation[tile.frame].duration)
				tile.frame = tile.frame + 1

				if tile.frame > #tile.animation then tile.frame = 1 end
			end

			if update and self.tileInstances[tile.gid] then
				for _, j in pairs(self.tileInstances[tile.gid]) do
					local t = self.tiles[tonumber(tile.animation[tile.frame].tileid) + self.tilesets[tile.tileset].firstgid]
					j.batch:set(j.id, t.quad, j.x, j.y, j.r, tile.sx, tile.sy, 0, j.oy)
				end
			end
		end
	end

	for _, layer in ipairs(self.layers) do
		layer:update(dt)
	end
end

--- Draw every Layer
-- @param tx Translate on X
-- @param ty Translate on Y
-- @param sx Scale on X
-- @param sy Scale on Y
function Map:draw(tx, ty, sx, sy)
	local current_canvas = lg.getCanvas()
	lg.setCanvas(self.canvas)
  lg.clear()
  
	-- Scale map to 1.0 to draw onto canvas, this fixes tearing issues
	-- Map is translated to correct position so the right section is drawn
	lg.push()
	lg.origin()
	lg.translate(math.floor(tx or 0), math.floor(ty or 0))

	for _, layer in ipairs(self.layers) do
		if layer.visible and layer.opacity > 0 then
      --*_*
			self:drawLayer(layer, tx, ty, sx, sy)
		end
	end

	lg.pop()

	-- Draw canvas at 0,0; this fixes scissoring issues
	-- Map is scaled to correct scale so the right section is shown
	lg.push()
	lg.origin()
	lg.scale(sx or 1, sy or sx or 1)

	lg.setCanvas(current_canvas)
  
  --*_*
  local oldR, oldG, oldB, oldA = love.graphics.getColor()
  love.graphics.setColor(255, 255, 255, 255)
	lg.draw(self.canvas)
  love.graphics.setColor(oldR, oldG, oldB, oldA)

	lg.pop()
end

--- Draw an individual Layer
-- @param layer The Layer to draw
function Map.drawLayer(_, layer, tx, ty, sx, sy)
	local r,g,b,a = lg.getColor()
	lg.setColor(r, g, b, a * layer.opacity)
	layer:draw(tx, ty, sx, sy)
	lg.setColor(r,g,b,a)
end

--- Default draw function for Tile Layers
-- @param layer The Tile Layer to draw
function Map:drawTileLayer(layer)
	if type(layer) == "string" or type(layer) == "number" then
		layer = self.layers[layer]
	end

	assert(layer.type == "tilelayer", "Invalid layer type: " .. layer.type .. ". Layer must be of type: tilelayer")

	for _, batch in pairs(layer.batches) do
		lg.draw(batch, floor(layer.x), floor(layer.y))
	end
end

--- Default draw function for Object Layers
-- @param layer The Object Layer to draw
function Map:drawObjectLayer(layer)
	if type(layer) == "string" or type(layer) == "number" then
		layer = self.layers[layer]
	end

	assert(layer.type == "objectgroup", "Invalid layer type: " .. layer.type .. ". Layer must be of type: objectgroup")

	local line  = { 160, 160, 160, 255 * layer.opacity       }
	local fill  = { 160, 160, 160, 255 * layer.opacity * 0.5 }
	local r,g,b,a = lg.getColor()
	local reset = {   r,   g,   b,   a * layer.opacity       }

	local function sortVertices(obj)
		local vertex = {}

		for _, v in ipairs(obj) do
			table.insert(vertex, v.x)
			table.insert(vertex, v.y)
		end

		return vertex
	end

	local function drawShape(obj, shape)
		local vertex = sortVertices(obj)

		if shape == "polyline" then
			lg.setColor(line)
			lg.line(vertex)
			return
		elseif shape == "polygon" then
			lg.setColor(fill)
			if not love.math.isConvex(vertex) then
				local triangles = love.math.triangulate(vertex)
				for _, triangle in ipairs(triangles) do
					lg.polygon("fill", triangle)
				end
			else
				lg.polygon("fill", vertex)
			end
		else
			lg.setColor(fill)
			lg.polygon("fill", vertex)
		end

		lg.setColor(line)
		lg.polygon("line", vertex)
	end

	for _, object in ipairs(layer.objects) do
		if object.shape == "rectangle" and not object.gid then
			drawShape(object.rectangle, "rectangle")
		elseif object.shape == "ellipse" then
			drawShape(object.ellipse, "ellipse")
		elseif object.shape == "polygon" then
			drawShape(object.polygon, "polygon")
		elseif object.shape == "polyline" then
			drawShape(object.polyline, "polyline")
		end
	end

	lg.setColor(reset)
	for _, batch in pairs(layer.batches) do
		lg.draw(batch, 0, 0)
	end
	lg.setColor(r,g,b,a)
end

--- Default draw function for Image Layers
-- @param layer The Image Layer to draw
function Map:drawImageLayer(layer)
	if type(layer) == "string" or type(layer) == "number" then
		layer = self.layers[layer]
	end

	assert(layer.type == "imagelayer", "Invalid layer type: " .. layer.type .. ". Layer must be of type: imagelayer")

	if layer.image ~= "" then
		lg.draw(layer.image, layer.x, layer.y)
	end
end

--- Resize the drawable area of the Map
-- @param w The new width of the drawable area (in pixels)
-- @param h The new Height of the drawable area (in pixels)
function Map:resize(w, h)
	if lg.isCreated then
		w = w or lg.getWidth()
		h = h or lg.getHeight()

		self.canvas = lg.newCanvas(w, h)
		self.canvas:setFilter("nearest", "nearest")
	end
end

--- Create flipped or rotated Tiles based on bitop flags
-- @param gid The flagged Global ID
-- @return table Flipped Tile
function Map:setFlippedGID(gid)
	local bit31   = 2147483648
	local bit30   = 1073741824
	local bit29   = 536870912
	local flipX   = false
	local flipY   = false
	local flipD   = false
	local realgid = gid

	if realgid >= bit31 then
		realgid = realgid - bit31
		flipX   = not flipX
	end

	if realgid >= bit30 then
		realgid = realgid - bit30
		flipY   = not flipY
	end

	if realgid >= bit29 then
		realgid = realgid - bit29
		flipD   = not flipD
	end

	local tile = self.tiles[realgid]
	local data = {
		id         = tile.id,
		gid        = gid,
		tileset    = tile.tileset,
		frame      = tile.frame,
		time       = tile.time,
		width      = tile.width,
		height     = tile.height,
		offset     = tile.offset,
		quad       = tile.quad,
		properties = tile.properties,
		terrain    = tile.terrain,
		animation  = tile.animation,
		sx         = tile.sx,
		sy         = tile.sy,
		r          = tile.r,
	}

	if flipX then
		if flipY and flipD then
			data.r  = math.rad(-90)
			data.sy = -1
		elseif flipY then
			data.sx = -1
			data.sy = -1
		elseif flipD then
			data.r = math.rad(90)
		else
			data.sx = -1
		end
	elseif flipY then
		if flipD then
			data.r = math.rad(-90)
		else
			data.sy = -1
		end
	elseif flipD then
		data.r  = math.rad(90)
		data.sy = -1
	end

	self.tiles[gid] = data

	return self.tiles[gid]
end

--- Get custom properties from Layer
-- @param layer The Layer
-- @return table List of properties
function Map:getLayerProperties(layer)
	local l = self.layers[layer]

	if not l then
		return {}
	end

	return l.properties
end

--- Get custom properties from Tile
-- @param layer The Layer that the Tile belongs to
-- @param x The X axis location of the Tile (in tiles)
-- @param y The Y axis location of the Tile (in tiles)
-- @return table List of properties
function Map:getTileProperties(layer, x, y)
	local tile = self.layers[layer].data[y][x]

	if not tile then
		return {}
	end

	return tile.properties
end

--- Get custom properties from Object
-- @param layer The Layer that the Object belongs to
-- @param object The index or name of the Object
-- @return table List of properties
function Map:getObjectProperties(layer, object)
	local o = self.layers[layer].objects

	if type(object) == "number" then
		o = o[object]
	else
		for _, v in ipairs(o) do
			if v.name == object then
				o = v
				break
			end
		end
	end

	if not o then
		return {}
	end

	return o.properties
end

--- Swap a tile in a spritebatch
-- @param instance The current Instance object we want to replace
-- @param tile The Tile object we want to use
-- @return none
function Map:swapTile(instance, tile)
	-- Update sprite batch
	if instance.batch then
		instance.batch:set(
			instance.id,
			tile.quad,
			instance.x,
			instance.y,
			tile.r,
			tile.sx,
			tile.sy
		)
	end

	-- Add new tile instance
	table.insert(self.tileInstances[tile.gid], {
		layer = instance.layer,
		batch = instance.batch,
		id    = instance.id,
		gid   = tile.gid,
		x     = instance.x,
		y     = instance.y,
		r     = tile.r,
		oy    = tile.r ~= 0 and tile.height or 0
	})

	-- Remove old tile instance
	for i, ins in ipairs(self.tileInstances[instance.gid]) do
		if  ins.batch == instance.batch and ins.id == instance.id then
			table.remove(self.tileInstances[instance.gid], i)
			break
		end
	end
end

--- Convert tile location to pixel location
-- @param x The X axis location of the point (in tiles)
-- @param y The Y axis location of the point (in tiles)
-- @return number The X axis location of the point (in pixels)
-- @return number The Y axis location of the point (in pixels)
function Map:convertTileToPixel(x,y)
	if self.orientation == "orthogonal" then
		local tileW = self.tilewidth
		local tileH = self.tileheight
		return
			x * tileW,
			y * tileH
	elseif self.orientation == "isometric" then
		local mapH    = self.height
		local tileW   = self.tilewidth
		local tileH   = self.tileheight
		local offsetX = mapH * tileW / 2
		return
			(x - y) * tileW / 2 + offsetX,
			(x + y) * tileH / 2
	elseif self.orientation == "staggered" or
		self.orientation     == "hexagonal" then
		local tileW   = self.tilewidth
		local tileH   = self.tileheight
		local sideLen = self.hexsidelength or 0

		if self.staggeraxis == "x" then
			return
				x * tileW,
				ceil(y) * (tileH + sideLen) + (ceil(y) % 2 == 0 and tileH or 0)
		else
			return
				ceil(x) * (tileW + sideLen) + (ceil(x) % 2 == 0 and tileW or 0),
				y * tileH
		end
	end
end

--- Convert pixel location to tile location
-- @param x The X axis location of the point (in pixels)
-- @param y The Y axis location of the point (in pixels)
-- @return number The X axis location of the point (in tiles)
-- @return number The Y axis location of the point (in tiles)
function Map:convertPixelToTile(x, y)
	if self.orientation == "orthogonal" then
		local tileW = self.tilewidth
		local tileH = self.tileheight
		return
			x / tileW,
			y / tileH
	elseif self.orientation == "isometric" then
		local mapH    = self.height
		local tileW   = self.tilewidth
		local tileH   = self.tileheight
		local offsetX = mapH * tileW / 2
		return
			y / tileH + (x - offsetX) / tileW,
			y / tileH - (x - offsetX) / tileW
	elseif self.orientation == "staggered" then
		local staggerX = self.staggeraxis  == "x"
		local even     = self.staggerindex == "even"

		local function topLeft(x, y)
			if staggerX then
				if ceil(x) % 2 == 1 and even then
					return x - 1, y
				else
					return x - 1, y - 1
				end
			else
				if ceil(y) % 2 == 1 and even then
					return x, y - 1
				else
					return x - 1, y - 1
				end
			end
		end

		local function topRight(x, y)
			if staggerX then
				if ceil(x) % 2 == 1 and even then
					return x + 1, y
				else
					return x + 1, y - 1
				end
			else
				if ceil(y) % 2 == 1 and even then
					return x + 1, y - 1
				else
					return x, y - 1
				end
			end
		end

		local function bottomLeft(x, y)
			if staggerX then
				if ceil(x) % 2 == 1 and even then
					return x - 1, y + 1
				else
					return x - 1, y
				end
			else
				if ceil(y) % 2 == 1 and even then
					return x, y + 1
				else
					return x - 1, y + 1
				end
			end
		end

		local function bottomRight(x, y)
			if staggerX then
				if ceil(x) % 2 == 1 and even then
					return x + 1, y + 1
				else
					return x + 1, y
				end
			else
				if ceil(y) % 2 == 1 and even then
					return x + 1, y + 1
				else
					return x, y + 1
				end
			end
		end

		local tileW = self.tilewidth
		local tileH = self.tileheight

		if staggerX then
			x = x - (even and tileW / 2 or 0)
		else
			y = y - (even and tileH / 2 or 0)
		end

		local halfH      = tileH / 2
		local ratio      = tileH / tileW
		local referenceX = ceil(x / tileW)
		local referenceY = ceil(y / tileH)
		local relativeX  = x - referenceX * tileW
		local relativeY  = y - referenceY * tileH

		if (halfH - relativeX * ratio > relativeY) then
			return topLeft(referenceX, referenceY)
		elseif (-halfH + relativeX * ratio > relativeY) then
			return topRight(referenceX, referenceY)
		elseif (halfH + relativeX * ratio < relativeY) then
			return bottomLeft(referenceX, referenceY)
		elseif (halfH * 3 - relativeX * ratio < relativeY) then
			return bottomRight(referenceX, referenceY)
		end

		return referenceX, referenceY
	elseif self.orientation == "hexagonal" then
		local staggerX  = self.staggeraxis  == "x"
		local even      = self.staggerindex == "even"
		local tileW     = self.tilewidth
		local tileH     = self.tileheight
		local sideLenX  = 0
		local sideLenY  = 0

		if staggerX then
			sideLenX = self.hexsidelength
			x = x - (even and tileW or (tileW - sideLenX) / 2)
		else
			sideLenY = self.hexsidelength
			y = y - (even and tileH or (tileH - sideLenY) / 2)
		end

		local colW       = ((tileW - sideLenX) / 2) + sideLenX
		local rowH       = ((tileH - sideLenY) / 2) + sideLenY
		local referenceX = ceil(x) / (colW * 2)
		local referenceY = ceil(y) / (rowH * 2)
		local relativeX  = x - referenceX * colW * 2
		local relativeY  = y - referenceY * rowH * 2
		local centers

		if staggerX then
			local left    = sideLenX / 2
			local centerX = left + colW
			local centerY = tileH / 2

			centers = {
				{ x = left,           y = centerY        },
				{ x = centerX,        y = centerY - rowH },
				{ x = centerX,        y = centerY + rowH },
				{ x = centerX + colW, y = centerY        },
			}
		else
			local top     = sideLenY / 2
			local centerX = tileW / 2
			local centerY = top + rowH

			centers = {
				{ x = centerX,        y = top },
				{ x = centerX - colW, y = centerY },
				{ x = centerX + colW, y = centerY },
				{ x = centerX,        y = centerY + rowH }
			}
		end

		local nearest = 0
		local minDist = math.huge

		local function len2(ax, ay)
			return ax * ax + ay * ay
		end

		for i = 1, 4 do
			local dc = len2(centers[i].x - relativeX, centers[i].y - relativeY)

			if dc < minDist then
				minDist = dc
				nearest = i
			end
		end

		local offsetsStaggerX = {
			{ x = 0, y =  0 },
			{ x = 1, y = -1 },
			{ x = 1, y =  0 },
			{ x = 2, y =  0 },
		}

		local offsetsStaggerY = {
			{ x =  0, y = 0 },
			{ x = -1, y = 1 },
			{ x =  0, y = 1 },
			{ x =  0, y = 2 },
		}

		local offsets = staggerX and offsetsStaggerX or offsetsStaggerY

		return
			referenceX + offsets[nearest].x,
			referenceY + offsets[nearest].y
	end
end

--- A list of individual layers indexed both by draw order and name
-- @table Map.layers
-- @see TileLayer
-- @see ObjectLayer
-- @see ImageLayer
-- @see CustomLayer

--- A list of individual tiles indexed by Global ID
-- @table Map.tiles
-- @see Tile
-- @see Map.tileInstances

--- A list of tile instances indexed by Global ID
-- @table Map.tileInstances
-- @see TileInstance
-- @see Tile
-- @see Map.tiles

--- A list of individual objects indexed by Global ID
-- @table Map.objects
-- @see Object

--- @table TileLayer
-- @field name The name of the layer
-- @field x Position on the X axis (in pixels)
-- @field y Position on the Y axis (in pixels)
-- @field width Width of layer (in tiles)
-- @field height Height of layer (in tiles)
-- @field visible Toggle if layer is visible or hidden
-- @field opacity Opacity of layer
-- @field properties Custom properties
-- @field data A tileWo dimensional table filled with individual tiles indexed by [y][x] (in tiles)
-- @field update Update function
-- @field draw Draw function
-- @see Map.layers
-- @see Tile

--- @table ObjectLayer
-- @field name The name of the layer
-- @field x Position on the X axis (in pixels)
-- @field y Position on the Y axis (in pixels)
-- @field visible Toggle if layer is visible or hidden
-- @field opacity Opacity of layer
-- @field properties Custom properties
-- @field objects List of objects indexed by draw order
-- @field update Update function
-- @field draw Draw function
-- @see Map.layers
-- @see Object

--- @table ImageLayer
-- @field name The name of the layer
-- @field x Position on the X axis (in pixels)
-- @field y Position on the Y axis (in pixels)
-- @field visible Toggle if layer is visible or hidden
-- @field opacity Opacity of layer
-- @field properties Custom properties
-- @field image Image to be drawn
-- @field update Update function
-- @field draw Draw function
-- @see Map.layers

--- Custom Layers are used to place userdata such as sprites within the draw order of the map.
-- @table CustomLayer
-- @field name The name of the layer
-- @field x Position on the X axis (in pixels)
-- @field y Position on the Y axis (in pixels)
-- @field visible Toggle if layer is visible or hidden
-- @field opacity Opacity of layer
-- @field properties Custom properties
-- @field update Update function
-- @field draw Draw function
-- @see Map.layers
-- @usage
--	-- Create a Custom Layer
--	local spriteLayer = map:addCustomLayer("Sprite Layer", 3)
--
--	-- Add data to Custom Layer
--	spriteLayer.sprites = {
--		player = {
--			image = lg.newImage("assets/sprites/player.png"),
--			x = 64,
--			y = 64,
--			r = 0,
--		}
--	}
--
--	-- Update callback for Custom Layer
--	function spriteLayer:update(dt)
--		for _, sprite in pairs(self.sprites) do
--			sprite.r = sprite.r + math.rad(90 * dt)
--		end
--	end
--
--	-- Draw callback for Custom Layer
--	function spriteLayer:draw()
--		for _, sprite in pairs(self.sprites) do
--			local x = math.floor(sprite.x)
--			local y = math.floor(sprite.y)
--			local r = sprite.r
--			lg.draw(sprite.image, x, y, r)
--		end
--	end

--- @table Tile
-- @field id Local ID within Tileset
-- @field gid Global ID
-- @field tileset Tileset ID
-- @field quad Quad object
-- @field properties Custom properties
-- @field terrain Terrain data
-- @field animation Animation data
-- @field frame Current animation frame
-- @field time Time spent on current animation frame
-- @field width Width of tile
-- @field height Height of tile
-- @field sx Scale value on the X axis
-- @field sy Scale value on the Y axis
-- @field r Rotation of tile (in radians)
-- @field offset Offset drawing position
-- @field offset.x Offset value on the X axis
-- @field offset.y Offset value on the Y axis
-- @see Map.tiles

--- @table TileInstance
-- @field batch Spritebatch the Tile Instance belongs to
-- @field id ID within the spritebatch
-- @field gid Global ID
-- @field x Position on the X axis (in pixels)
-- @field y Position on the Y axis (in pixels)
-- @see Map.tileInstances
-- @see Tile

--- @table Object
-- @field id Global ID
-- @field name Name of object (non-unique)
-- @field shape Shape of object
-- @field x Position of object on X axis (in pixels)
-- @field y Position of object on Y axis (in pixels)
-- @field width Width of object (in pixels)
-- @field height Heigh tof object (in pixels)
-- @field rotation Rotation of object (in radians)
-- @field visible Toggle if object is visible or hidden
-- @field properties Custom properties
-- @field ellipse List of verticies of specific shape
-- @field rectangle List of verticies of specific shape
-- @field polygon List of verticies of specific shape
-- @field polyline List of verticies of specific shape
-- @see Map.objects

return setmetatable({}, STI)
