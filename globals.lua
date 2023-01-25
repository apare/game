local function makeFont(path)
  return setmetatable({}, {
    __index = function(t, size)
      local f = love.graphics.newFont(path, size)
      rawset(t, size, f)
      return f
    end
  })
end

Fonts = {
  default = nil,
  regular = makeFont 'assets/fonts/Roboto-Regular.ttf',
  bold = makeFont 'assets/fonts/Roboto-Bold.ttf',
  light = makeFont 'assets/fonts/Roboto-Light.ttf',
  thin = makeFont 'assets/fonts/Roboto-Thin.ttf',
  regularItalic = makeFont 'assets/fonts/Roboto-Italic.ttf',
  boldItalic = makeFont 'assets/fonts/Roboto-BoldItalic.ttf',
  lightItalic = makeFont 'assets/fonts/Roboto-LightItalic.ttf',
  thinItalic = makeFont 'assets/fonts/Roboto-Italic.ttf',
  monospace = makeFont 'assets/fonts/RobotoMono-Regular.ttf'
}

Fonts.default = Fonts.regular

Lume = require 'libs.lume'

-- Inspect = require 'libs.inspect'

Camera = require 'libs.hump.camera'

Timer = require 'libs.hump.timer'
Class = require 'libs.hump.class'
GameState = require 'libs.hump.gamestate'
Signal = require 'libs.hump.signal'
Vector = require 'libs.hump.vector'

States = {
  empty = require 'states.empty'
}
