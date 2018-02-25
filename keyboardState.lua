local KeyboardState = {
  stack = {}
}

function love.keypressed(key, scancode, isrepeat)
  if #KeyboardState.stack == 0 then 
    return 
  end
  local cb = KeyboardState.stack[#KeyboardState.stack].keyPressedCallback
  if cb then
    cb(key, scancode, isrepeat)
  end
end

function love.keyreleased(key)
  if #KeyboardState.stack == 0 then 
    return 
  end
  local cb = KeyboardState.stack[#KeyboardState.stack].keyReleasedCallback
  if cb then
    cb(key)
  end
end

function KeyboardState.push(pressedcb, releasedcb)
  table.insert(KeyboardState.stack, { keyPressedCallback = pressedcb, keyReleasedCallback = releasedcb } )
end

function KeyboardState.pop()
  table.remove(KeyboardState.stack)
end

function KeyboardState.clear()
  KeyboardState.stack = {}
end


return KeyboardState