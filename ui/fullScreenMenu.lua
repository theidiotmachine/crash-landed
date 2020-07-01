local common_local = common
if not (type(common) == 'table' and common.class and common.instance) then
	assert(common_class ~= false, 'No class commons specification available.')
	require('HC.class')  
  common_local = common
end

local FullScreenMenu = {}

function FullScreenMenu:keypressed(key, scancode, isrepeat)
  if key == 'up' or key == 'w' then
    self.selectedElem = self.selectedElem - 1
    if self.selectedElem == 0 then
      self.selectedElem = #self.elems
    end
  end
  if key == 'down' or key == 's' then
    self.selectedElem = self.selectedElem + 1
    if self.selectedElem > #self.elems then
      self.selectedElem = 1
    end
  end
  if key == 'left' or key == 'a' then
    local elem = self.elems[self.selectedElem]
    if elem.quantity then
      elem.quantity.cb(-0.1)
    end
  end
  if key == 'right' or key == 'd' then
    local elem = self.elems[self.selectedElem]
    if elem.quantity then
      elem.quantity.cb(0.1)
    end
  end
  if key == 'escape' then
    self.backcb()
  end
  if key == 'return' or key == ' ' then 
    local elem = self.elems[self.selectedElem]
    if elem.cb then
      elem.cb()
    end
  end
end

function FullScreenMenu:init(elems, keyboardState, backcb)
  self.elems = elems
  self.selectedElem = 1
  self.keyboardState = keyboardState
  self.backcb = backcb
  keyboardState.push(function(k, s, r) self:keypressed(k, s, r) end, nil)
end

function FullScreenMenu:shutDown()
  self.keyboardState.pop()
end

function FullScreenMenu:drawElem(elem, x, y, isSelected, maxfw)
  love.graphics.setFont(fontVecBold64)
  if isSelected then
    love.graphics.setColor(1, 1, 1)
  else
    love.graphics.setColor(150/255, 150/255, 150/255)
  end
  love.graphics.print(elem.text, x, y)
  
  if elem.quantity then
    local pad = 16
    local qx = x + maxfw
    local fh = fontVecBold64:getHeight()
    local blipSize = 10
    local blipValue = 0.1
    local numBlips = elem.quantity.getValue() / blipValue
    local maxBlips = 1 / blipValue
    local blipIndex = 0
    
    while blipIndex <= numBlips do
      local bh = fh * blipIndex / maxBlips
      love.graphics.rectangle('fill', qx + blipIndex * (blipSize + pad), y + (fh-bh), blipSize, bh)
      blipIndex = blipIndex + 1
    end
  end
end

function FullScreenMenu:draw()
  local pad = 16
  
  local ww = love.graphics.getWidth()
	local wh = love.graphics.getHeight()
  local fh = fontVecBold64:getHeight()
  
  local maxfw = 0
  local hasQty = false
  for i, elem in ipairs(self.elems) do
    maxfw = math.max(maxfw, fontVecBold64:getWidth(elem.text))
    hasQty = hasQty or elem.quantity
  end
  local menuW = maxfw
  if hasQty then
    menuW = menuW + 10*10 + 16*9 + pad*2
  end
  menuW = menuW + pad * 2
  
  
  local menuH = #self.elems * fh + (#self.elems - 1) * pad
  local y = (wh - menuH) / 2
  local x = (ww - menuW) / 2
  
  love.graphics.setColor(0, 0, 0, 128/255)
  love.graphics.rectangle('fill', x, y, menuW, menuH)
  
  for i, elem in ipairs(self.elems) do
    self:drawElem(elem, x + pad, y, i == self.selectedElem, maxfw)
    y = y + fh + pad
  end
end

function FullScreenMenu:update(dt)
end

FullScreenMenu = common_local.class('FullScreenMenu', FullScreenMenu)

local function newFullScreenMenu(...)
	return common_local.instance(FullScreenMenu, ...)
end

return {
	FullScreenMenu = FullScreenMenu,
	newFullScreenMenu = newFullScreenMenu,
}