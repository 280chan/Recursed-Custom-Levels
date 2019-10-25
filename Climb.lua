local metal = {["7"] = "buoy_ul", ["9"] = "buoy_ur",
                ["4"] = "buoy_l", ["6"] = "buoy_r",
                ["1"] = "buoy_dl", ["3"] = "buoy_dr",
                ["<"] = "widdershins", [">"] = "clockwise",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                o = "box", ["="] = "girder_h", ["|"] = "girder_v",
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }
local black = { o = "glitch", s = "glitchhole", ["-"] = "glitchledge" }
local crazy = { o = "glitch", z = "cloud", ["#"] = "wetbox", ["?"] = "girder",
                ["1"] = "ledge", ["2"] = "glitchledge", ["3"] = "cloudledge",
                ["4"] = "clockwise", ["5"] = "widdershins" }

local cloud = { ["<"] = "cloud_l", o = "cloud", [">"] = "cloud_r", ["-"] = "cloudledge" }
				
-- main
				
function start(is_wet)
ApplyTiles(metal, 0, 0, [[
oooooooooooooow1313o
o............oo....o
o..................o
o..................o
o..............ooooo
owwwwwwwwwwwwwwwwwwo
ooooowwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwoooo
owwwwwwwwwwwwwwwwwwo
oooowwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwooo
owwwwwwwwwwwwwwwwo<>
oooooooooooooooooo<>
]])
  Spawn("generic", 6, 12.5)
  Global("chest", 8, 12.5, "roomA")
  Spawn("player", 10, 12)
end

function roomA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooow1313o
o............oo....o
o..................o
o..................o
o..............ooooo
owwwwwwwwwwwwwwwwwwo
ooooowwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwoooo
owwwwwwwwwwwwwwwwwwo
oooowwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwooo
owwwwwwwwwwwwwwwwo<>
oooooooooooooooooo<>
]])
  Spawn("crystal", 17.5, 2.5)
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooo.7979o
o............oo4646o
o..............4646o
o..............1313o
o..............ooooo
o..................o
ooooo..............o
o..................o
o...............oooo
o..................o
oooo...............o
o..................o
owwwwwwwwwwwwwwwwooo
owwwwwwwwwwwwwwwwo<>
oooooooooooooooooo<>
]])
end
  Spawn("player", 10, 12)
  Spawn("generic", 7.5, 12.5)
  Spawn("yield", 12.5, 12)
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

function reject(is_wet)
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooosooooooooosooooo
oooooooosooooooooooo
oosoooooooosoooooooo
oooooooooooooooooooo
o..................o
o..................o
o..................o
o---oooooooooooooooo
o...oosooooooosooooo
o...oooooooooooooooo
o---oooooooooooosooo
o...ooooooosoooooooo
o...oooosooooooooooo
oooooooooooooooooooo
]])
  Spawn("key", 9, 7.5)
  Spawn("player", 2.5, 13)
  Spawn("chest", 11, 7.5, "empty")
  Spawn("chest", 13, 7.5, "diamondroom")
  Global("cauldron", 15, 7.5, "rejecttwo")
  
end

function rejecttwo(is_wet)
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooosooooooooosooooo
oooooooosooooooooooo
oosoooooooosoooooooo
oooooooooooooooooooo
o..................o
o..................o
o..................o
oooooooooooooooooooo
osoooosooooooosooooo
oooosooooooooooooooo
oooooooooooooooosooo
oosoooooooosoooooooo
oooooooosoooooooooso
oooooooooooooooooooo
]])
  Spawn("player", 2.5, 7)
  Spawn("chest", 13, 7.5, "diamondroom")
  Spawn("chest", 11, 7.5, "empty")
  Spawn("cauldron", 15, 7.5, "reject")
end

function empty(is_wet)
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
ooosoooooooooooooooo
oooooooooooooosooooo
osoooooooooooooooooo
oooooooooooooooooooo
ooooo..........ooooo
ooooo..........oosoo
ooooo..........ooooo
osooo..........ooooo
ooooo..........ooooo
oooooooooooooooooooo
ooooooooooosoooooooo
ooooosoooooooooosooo
oosoooooosoooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 10, 9)
end

function diamondroom(is_wet)
  ApplyTiles(black, 0, 0, [[
sooooooooooooooooooo
oo.................o
o..................o
o..................o
o..ooooooooooooooooo
o..................o
o..................o
o..................o
o..................o
o..................o
ooooooooooooooooo..o
o..................o
o..................o
o.................oo
ooooooooooooooooooos
]])
  Spawn("player", 10, 9)
  Global("fan", 5.5, 13.5)
  Spawn("lock", 16.5, 12.5)
  Spawn("lock", 4.5, 2.5)
  Spawn("lock", 6.5, 2.5)
  Spawn("lock", 8.5, 2.5)
  Spawn("yield", 8, 9)
  Spawn("diamond", 17.5, 2.5)
end

-- Threadless

function threadless()
  ApplyTiles(cloud, 0, 0, [[
oooooooooooooooooooo
oo>.............<ooo
oo>.............<ooo
oo>.............<ooo
oo---ooooooooooooooo
oo>.............<ooo
oo>.............<ooo
oo>.............<ooo
oo---oo>........<ooo
oo>.<oo>........<ooo
oo>.<oo>........<ooo
oo---oo>........<ooo
oo>.<ooooooooooooooo
oo>.<ooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 3.5, 13)
  Spawn("chest", 10, 11.5, "keyroom")
  Spawn("lock", 6.5, 2.5)
  Global("chest", 16, 3.5, "green")
  Spawn("chest", 14, 11.5, "rubyroom")

end

function keyroom()
  ApplyTiles(cloud, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 10, 11)
  Spawn("key", 12.5, 11.5)
  Spawn("chest", 7.5, 11.5, "keyroom")
end

function green()
  ApplyTiles(cloud, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 10, 11)
end

function rubyroom()
  ApplyTiles(cloud, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooo>............<ooo
ooo>............<ooo
ooo>............<ooo
ooo>....<oooo>..<ooo
ooo>....<o>.....<ooo
ooo>....<o>.....<ooo
ooo>....<o>.....<ooo
ooo>.<oooo>.....<ooo
ooo>.<o>........<ooo
ooo>.<o>........<ooo
ooo>.<o>........<ooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 4.5, 12)
  Spawn("ruby", 10.5, 11.5)
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