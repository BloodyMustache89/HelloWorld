function love.load()
  love.window.setTitle("Hello World Project")
  love.graphics.setBackgroundColor(255, 255, 255)
  window_width, window_height = love.window.getMode()
end

function love.update(dt)
  if love.keyboard.isDown("escape") then
    love.event.quit(true)
  end
end

function love.draw()
  love.graphics.setNewFont("res/fonts/still time.ttf", 128)
  local font = love.graphics.getFont()
  local font_width = font:getWidth("Hello World")
  local font_height = font:getHeight("Hello World")

  love.graphics.setColor(150, 0, 0, 255)
  love.graphics.print("Hello World", window_width / 2 - font_width / 2, window_height / 2 - font_height / 2)
end
