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
  Global("chest", 15, 3.5, "lust")
  Spawn("chest", 18, 7.5, "limbo")
  Spawn("chest", 16, 11.5, "limbo")

end

function limbo()
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

function lust()
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
5555556;:.......4555
555578889.......4555
555545556.......4555
5555455568889TTT4555
]])

  Spawn("player", 14, 12)
  Spawn("crystal", 3.5, 3.5)
end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oo.................o
oo.................o
oo.................o
oo.........ooooooooo
oo.........ooooooooo
oo.........ooo.ooooo
oo.........ooooooooo
oo.........ooooooooo
ooooooooooooooooo.oo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 3.4, 10)
  Spawn("key", 6.1, 10.5)
  Spawn("chest", 8.0, 10.5, "dungeon")
  Spawn("lock", 12.5, 4.5)
  Global("lock", 14, 4.5)
  Spawn("lock", 15.5, 4.5)
  Spawn("diamond", 17.5, 4.5)

  Spawn("record", 5.6, 10.5, "sounds/voices/v5r")
end

function dungeon()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooo...........>oooo
oooo............oooo
oooo............oooo
oooo............oooo
oooo............oooo
oooooooooooooooooooo
oooooooo>ooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 6.1, 9)
  Global("fan", 10.2, 9.5)
  Global("chest", 14.3, 9.5, "dungeon")
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }

