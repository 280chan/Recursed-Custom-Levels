local metal = {["7"] = "buoy_ul", ["9"] = "buoy_ur",
                ["4"] = "buoy_l", ["6"] = "buoy_r",
                ["1"] = "buoy_dl", ["3"] = "buoy_dr",
                ["<"] = "widdershins", [">"] = "clockwise",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                o = "box", ["="] = "girder_h", ["|"] = "girder_v",
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }
local black = { o = "glitch", s = "glitchhole", ["-"] = "glitchledge", w = "water"}
local crazy = { o = "glitch", z = "cloud", ["#"] = "wetbox", ["?"] = "girder",
                ["1"] = "ledge", ["2"] = "glitchledge", ["3"] = "cloudledge",
                ["4"] = "clockwise", ["5"] = "widdershins" }

local cloud = { ["<"] = "cloud_l", o = "cloud", [">"] = "cloud_r", ["-"] = "cloudledge", w = "water" }
				
-- main
				
function start()
ApplyTiles(metal, 0, 0, [[
ooooooo.oooooooooooo
o..................o
o..................o
o..................o
o---o--------...o..o
o...o...........o..o
o...o........oooo..o
o...o........o.....o
o...oooo.....o.....o
o...o........o..o..o
o...o...oooooo..o..o
o...o...........o..o
o...ooo.........oooo
o...ooo.........o<>o
o...ooooooooooooo<>o
]])
  Spawn("ruby", 2.5, 2.5)
  Spawn("diamond", 5.5, 2.5)
  Spawn("lock", 7.5, 1.5)
  Spawn("crystal", 11.5, 2.5)
  Global("chest", 6, 11.5, "start")
  Spawn("player", 9.5, 13)
  Spawn("yield", 11.5, 13)
  Spawn("yield", 13.5, 13)
end

-- glitch

function glitch()
  ApplyTiles(crazy, 0, 0, [[
o##oo521...54o?oo.??
##o.o43...3215oo.o.o
o#oo5o21....432oo.o.
.#o.o43......15ooo.o
.#ooz1.......4o2o14.
.#z#oo2.......3o?zzo
###o4o.......ooooooo
oz#ooo.........ooz?z
z.?oo...........o#o.
ozoo...........oozzo
o#ooo...........o2oo
zozo............ozo?
ozoz............?o?o
zozo##?###zzo???z?o?
oz5#?##4z?#z?oo??o1o
]])

  Spawn("player", 6.4, 12)
end

-- paradox

function reject()
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooosooooooooosooooo
oooooooosooooooooooo
oosoooooooosoooooooo
osoooosooooooosooooo
oooooooooooooooooooo
o..................o
o..................o
o..................o
oooooooooooooooooooo
ooooosoooooooooooooo
oooooooooooooooosooo
ooooooooooosoooooooo
oosooooosoooooooooso
oooooooooooooooooooo
]])
  Spawn("cauldron", 4, 8.5, "rejecttwo")
  Spawn("chest", 8, 8.5, "climb")
  Spawn("chest", 12, 8.5, "keyroom")
  Spawn("player", 16, 8)
end

function rejecttwo()
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooosooooooooosooooo
oooooooosooooooooooo
oosoooooooosoooooooo
oooooosooooooosooooo
oooooooooooooooooooo
o..................o
o..................o
o..................o
oooooooooooooooowwwo
oooooooooooooooowwwo
oooooooooooooooowwwo
ooooooooooosoooooooo
oooooooosooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 3, 8)
  Spawn("generic", 6, 8.5)
  Spawn("generic", 9, 8.5)
  Spawn("generic", 12, 8.5)
  Global("cauldron", 15, 8.5, "reject")
end

function climb(is_wet)
if is_wet then
  ApplyTiles(black, 0, 0, [[
ooooosoooooooooooooo
oooooooooooooooooooo
................oooo
................oooo
................oooo
----............ooso
................oooo
................oooo
....----........oooo
................oooo
................oooo
--------oooowwwwoooo
........oooowwwwoooo
........oosowwwwoooo
........oooooooooooo
]])
else
  ApplyTiles(black, 0, 0, [[
ooooosoooooooooooooo
oooooooooooooooooooo
................oooo
................oooo
................oooo
----............ooso
................oooo
................oooo
....----........oooo
................oooo
................oooo
--------oooo....oooo
........oooowwwwoooo
........oosowwwwoooo
........oooooooooooo
]])
end
  Spawn("player", 0.5, 3)
  Spawn("fan", 14, 13.5)
end

function keyroom(is_wet)
if is_wet then
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooooo.......o......o
oosoo.......o......o
ooooo.......o......o
ooooo...o...o...oooo
ooooo...o...o...osoo
oosoo...o...o...oooo
ooooo...o...o...oooo
ooooo...o...o...oooo
oowwwwwwowwwwwwwoooo
oowwwwwwowwwwwwwosoo
oowwwwwwowwwwwwwoooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
else
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooooo.......o......o
oosoo.......o......o
ooooo.......o......o
ooooo...o...o...oooo
ooooo...o...o...osoo
oosoo...o...o...oooo
ooooo...o...o...oooo
ooooo...o...o...oooo
oo......o.......oooo
oo......o.......osoo
oo......o.......oooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
end
  Spawn("player", 3.5, 12)
  Spawn("key", 17.5, 4.5)
end

-- Threadless

function threadless()
  ApplyTiles(cloud, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo---oooooooooooooo
ooo>............<ooo
ooo>............<ooo
oooooooooooooo---ooo
oooooooooooooo>.<ooo
oooooooooooooo>.<ooo
oooooooooooooo---ooo
oooooooooooooo>.<ooo
]])
  Spawn("player", 15.5, 12)
  Spawn("chest", 11.5, 6.5, "empty")
  Spawn("chest", 8.5, 6.5, "empty")
  Global("chest", 14.5, 6.5, "start")
  Global("generic", 10, 9.5)
end

function empty()
  ApplyTiles(cloud, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 5.5, 9)
end

tiles = "tiles/clockwork"
pattern = "backgrounds/library"
dark = { start = { 0.1, 0.02, 0.04 }}
light = { start = {0.24, 0.07, 0.10}}
dark.threadless = {0.75, 0.55, 0.75}
light.threadless = {1.0, 0.96, 0.46}
dark.reject = {0.5, 0.0, 0.5}
light.reject = {0.8, 0.0, 0.8}
dark.rejecttwo = {0.1, 0.4, 0.3}
light.rejecttwo = {0.2, 0.7, 0.4}