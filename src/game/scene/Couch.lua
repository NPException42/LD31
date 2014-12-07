local Couch = {}
Couch.__index = Couch

local globals = GLOBALS


local gfx = {
  image = love.graphics.newImage("assets/scene/couch.png"),
}



function Couch.new()
  local c = setmetatable({}, Couch)
  c.x = 640
  c.y = 440
  c.offX = 370
  c.offY = 220
  c.seats = {
    {x=230, y=166},
    {x=490, y=147}
  }
  c.spots = {
    {x=162,y=17},
    {x=591,y=16},
    {x=670,y=70},
    {x=227,y=166}
  }
  return c
end



function Couch:update(dt)
end



local lg = love.graphics
function Couch:draw()
  if not globals.config.oldschool then
    lg.setColor(255,255,255)
    lg.draw(gfx.image, self.x-self.offX, self.y-self.offY)
  end
end



return Couch