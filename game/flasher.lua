local Flasher = {}


function Flasher:update(dt)
  if self.flashing then
    self.flashTimer = self.flashTimer - dt
    if self.flashTimer < 0 then
      --change state
      if self.flashState == "on" then
        self.flashState = "off"
        self.flashTimer = self.flashTimers[self.flashState]
        self.tile = self.flashTiles[self.flashState]
      else
        self.flashTimers.off = self.flashTimers.off - 0.1
        if self.flashTimers.off <= 0 then
          return true
        else
          self.flashState = "on"
          self.flashTimer = self.flashTimers[self.flashState]
          self.tile = self.flashTiles[self.flashState]
        end
      end
    end
  end
  return false
end

function Flasher:setOff()
  local flashTimerOff = 0.5
  if self.flashing == false then
    self.flashing = true
    self.flashTimers = { on = 0.1, off = flashTimerOff }
    self.flashState = "on"
    self.flashTimer = self.flashTimers[self.flashState]
    self.tile = self.flashTiles[self.flashState]
  end
end

function Flasher:draw(cx, cy, x, y, r, sx, sy)
  local image = self.tile.image
  local quad = self.tile.quad
  local tilesize = self.tile.tileSize
  love.graphics.draw(image, quad, 
        x+cx+(-tilesize.x/2 * sx), y+cy+(-tilesize.y/2 * sy), r, sx, sy)
end

function Flasher:reset()
  self.flashing = false
end

function Flasher.create(flashTileOn, flashTileOff)
  return {
    update = Flasher.update,
    draw = Flasher.draw,
    setOff = Flasher.setOff,
    reset = Flasher.reset,
    flashTiles = {
      on = {
        image = flashTileOn.image,
        quad = flashTileOn.quad,
        tileSize = {x = flashTileOn.width, y = flashTileOn.height}
      },
      off = {
        image = flashTileOff.image,
        quad = flashTileOff.quad,
        tileSize = {x = flashTileOff.width, y = flashTileOff.height}
      },
    },
    flashing = false
  }
end

return Flasher