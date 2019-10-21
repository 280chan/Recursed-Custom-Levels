-- Inflexible chest

local outrun = { o = "box", O = "monobox",
                 T = "pave", x = "ceil", ["|"] = "pillar",
                 ["-"] = "ledge", [":"] = "shroom1", [","] = "shroom2", [";"] = "shroom3",
                 ["7"] = "block_ul", ["8"] = "block_u", ["9"] = "block_ur",
                 ["4"] = "block_l", ["5"] = "block", ["6"] = "block_r" }

local glitch = { o = "glitch", [">"] = "glitchd", ["-"] = "glitchledge" }

function start()
  ApplyTiles(outrun, 0, 0, [[
xxxxxxxxxxxxxxxxxxxx
|..................|
|..................|
|..................|
|.............oo...7
|..................4
|........O.........4
|..................4
|...O............788
9................455
6................455
6.......O........455
6..............78888
6,;:;,:,.......45555
88889TTTTTTTTTT45555
]])

  Spawn("player", 13.5, 13)
  Spawn("cauldron", 15, 3.5, "two")
  Spawn("chest", 18, 7.5, "two")
end

function two()
  ApplyTiles(outrun, 0, 0, [[
xxxxxxxxxxxxxxxx|55|
|...............|55|
|...............|55|
9...............|55|
6...............oxxo
6..................|
6..................|
6...,:;............|
8888889............|
5555556...........,|
5555556.........7888
5555556.........4555
5555556.......784555
5555556;:.....454555
5555556TTT7888454555
]])

  Spawn("crystal", 3.5, 3.5)
  Spawn("cauldron", 8.5, 13.5, "start")
  Spawn("player", 10.5, 13)
  Global("chest", 12.5, 13.5, "green")
end

function green()
  ApplyTiles(outrun, 0, 0, [[
|55|xxxxxxxxxxxxxxxx
|55|...............|
|55|...............|
|55|...............|
oxxo...............|
9..................|
6..................|
6..................|
6..................|
6............,:....|
6............7888888
8889.........4555555
5556.......788888888
5556.......455555555
5556TTTTTTT455555555
]])

  Spawn("player", 6, 13)
end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooo.ooooooo.ooo
oooooooooooooooooooo
oo................oo
oo................oo
oo................oo
oo.........ooooooooo
oo.........oooooo.oo
oo.........o.ooooooo
oo.........ooooooooo
oo.........oooo.oooo
oooooooooooooooooooo
oo.ooooooooooooo.ooo
ooooooooooo.oooooooo
oooooooooooooooooooo
]])

  Spawn("player", 3.5, 10)
  Spawn("key", 9.1, 10.5)
  Spawn("fan", 7.1, 10.5)
  
  Spawn("lock", 13, 4.5)
  Spawn("lock", 14.5, 4.5)
  Spawn("diamond", 16.5, 4.5)
  
  Spawn("record", 4.6, 10.5, "sounds/voices/v5r")

end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = {start = {0.04, 0.03, 0.31}, two = {0.22, 0.08, 0.02}, reject = {0.06, 0.17, 0.21} }
light = {start = {0.11, 0.26, 0.64}, two = {0.44, 0.15, 0.05}, reject = {0.1, 0.25, 0.33} }

