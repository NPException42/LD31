local TVFrame = {}
TVFrame.__index = TVFrame

local globals = GLOBALS
local tween = require("lib.tween")

local frameImage = love.graphics.newImage("assets/scene/tvframe.png")



function TVFrame.new()
  local tvf = setmetatable({}, TVFrame)
  tvf.timer = 0
  return tvf
end



function TVFrame:update(dt)
  self.timer = self.timer + dt
end



local lg = love.graphics
function TVFrame:draw()
  -- draw scanline
  lg.setLineWidth(1)
  local alpha = {100}
  local alphaTween = tween.new(100, alpha, {0}, 'outCirc')
  for i=0,100 do
    local scanlineY = math.floor((self.timer*globals.config.resY*0.3-i) % (globals.config.resY-10))+5
    lg.setColor(200,255,255,alpha[1])
    lg.line(5,scanlineY, globals.config.resX-5, scanlineY)
    alphaTween:update(1)
  end
  
  -- draw tv frame image
  lg.setColor(255,255,255)
  lg.draw(frameImage,0,0)
end

return TVFrame