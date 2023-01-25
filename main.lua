require 'globals'

function love.load()
  love.window.setIcon(love.image.newImageData('assets/images/icon.png'))
  love.graphics.setDefaultFilter("nearest", "nearest", 1)

  Gamestate.registerEvents()
  Gamestate.switch(States.empty)
end
