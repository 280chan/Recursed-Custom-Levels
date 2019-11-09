-- Stupid chest confusion

local outrun = { o = "box", O = "monobox",
                 T = "pave", x = "ceil", ["|"] = "pillar",
                 ["-"] = "ledge", [":"] = "shroom1", [","] = "shroom2", [";"] = "shroom3",
                 ["7"] = "block_ul", ["8"] = "block_u", ["9"] = "block_ur",
                 ["4"] = "block_l", ["5"] = "block", ["6"] = "block_r",
                 ["'"] = "ledgend" }

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
  Spawn("player", 16, 11)
  Spawn("chest", 15, 3.5, "goal")
end

function goal()
    ApplyTiles(outrun, 0, 0, [[
xxxxxxxxxxxxxxxxxxxx
|...........|......|
|...........|......|
|---------o.|......|
|xxxxxo...|.|.oxxxx|
|.....|...|.|......|
|.....|...|.|......|
|.....|o..|.|-.....|
9...o.|...|.|....o-o
6...|.|...|.|....|..
6...|.o..o|.|....o..
6...|.....|.o.....-o
89.79.....|.........
56.46888889.........
56x46555556888888889
]])
  Spawn("key", 2.5, 13.5)
  Spawn("box", 1.8, 11.5)
  Spawn("box", 3.2, 11.5)
  Spawn("player", 6.5, 12)
  Spawn("box", 8.5, 12.5)
  Spawn("lock", 17.5, 12.5)
  Spawn("chest", 19.5, 13.5, "empty")
  Spawn("crystal", 17.5, 2.5)
end

function empty()
    ApplyTiles(outrun, 0, 0, [[
xxxxxxxxxxxxxxxxxxxx
|555|5555555555|555|
|578|8888888888|895|
|545|5555555555|565|
88889xxxxxxxxxx78888
55556..........45555
55556..........45555
55556..........45555
55556..........45555
55556..........45555
55556888888888845555
55556555555555545555
55556555555555545555
55556555555555545555
55556555555555545555
]])
  Spawn("player", 7.5, 9)
  Global("box", 12.5, 9.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { 0.04, 0.08, 0.12 }
light = { 0.06, 0.17, 0.21 }

