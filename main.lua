require 'globals'

function love.load()
  GameState.registerEvents()
  GameState.switch(States.empty)
end
