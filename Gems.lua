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
oooooooooooooooooooo
o..................o
o..................o
o..................o
o---ooo---------...o
o...o..............o
o...o............ooo
o...o..............o
o...ooo............o
o...o..............o
o...o...........oooo
o...o..............o
o...oooo...........o
o...o<<o...........o
o...o>>ooooooooooooo
]])
  Spawn("ruby", 2.5, 2.5)
  Spawn("diamond", 5.5, 2.5)
  Spawn("crystal", 14.5, 2.5)
  Spawn("player", 10, 13)
  Global("chest", 12, 13.5, "start")
  Spawn("yield", 14, 13)
  Spawn("yield", 16, 13)
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
oooooosooooooosooooo
oooooooooooooooooooo
o..................o
o..................o
o..................o
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooosooo
ooooooooooosoooooooo
oooooooosooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 5, 8)
  Spawn("generic", 10, 8.5)
  Global("cauldron", 15, 8.5, "rejecttwo")
  
end

function rejecttwo()
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
oooosooooooooooooooo
oooooooooooooooosooo
oosoooooooosoooooooo
oooooooosoooooooooso
oooooooooooooooooooo
]])
  Spawn("player", 15, 8)
  Spawn("fan", 12.5, 8.5)
  Spawn("generic", 10, 8.5)
  Spawn("cauldron", 5, 8.5, "reject")
end

-- Threadless

function threadless()
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
  Global("chest", 14.5, 9.5, "start")
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