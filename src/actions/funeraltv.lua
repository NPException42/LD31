-- --------------------------
-- Action: Funeral TV
-- --------------------------
return {
  name = "funeral tv",
  animation = nil,  -- Filepath
  icon = love.graphics.newImage("assets/actions/funeraltv.png"),
  score = {
    baby    = { scare = 0, neutral = 0, delight = 0},
    girl    = { scare = 0, neutral = 0, delight = 0},
    boy     = { scare = 0, neutral = 0, delight = 0},
    emo     = { scare = 0, neutral = 0, delight = 0},
    dad     = { scare = 0, neutral = 0, delight = 0},
    mom     = { scare = 0, neutral = 0, delight = 0},
    grandma = { scare = 0, neutral = 0, delight = 0},
    grandpa = { scare = 0, neutral = 0, delight = 0}
    }
  }