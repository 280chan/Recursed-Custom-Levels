local metal = { o = "box", ["="] = "girder_h", ["|"] = "girder_v", a = "acid",
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge",
				["7"] = "buoyul", ["8"] = "buoyu", ["9"] = "buoyur",
				["4"] = "buoyl", ["5"] = "buoyc", ["6"] = "buoyr",
				["1"] = "buoydl", ["2"] = "buoyd", ["3"] = "buoydr"}
local black = { o = "glitch", s = "glitchd", ["-"] = "glitchledge", a = "acid" }
local crazy = { o = "glitch", z = "block_ul", ["#"] = "ceil", ["?"] = "pillar",
                ["1"] = "char0", ["2"] = "char2", ["3"] = "char3",
                ["4"] = "block", ["5"] = "box" }

function start(is_wet)
ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oaaaaaaaaooaaaaaaaao
oaaaaaaaaooaaaaaaaao
oaaaaaaaaooaaaaaaaao
oaaooooooooooooooaao
oaaaaaaaaooaaaaaaaao
oaaaaaaaaooaaaaaaaao
oaaaaaaaaooaaaaaaaao
ooooooooaooaoooooooo
ooooooo.aooa.ooooooo
ooooooo.aooa.ooooooo
ooooooo.oooo.ooooooo
ooooooo......ooooooo
ooooooo......ooooooo
ooooooo------ooooooo
]])

  Spawn("player", 10, 13)
  Spawn("generic", 6, 3.5)
  Spawn("chest", 3, 7.5, "storageA")
  Spawn("chest", 6, 7.5, "roomA")
  
  Spawn("chest", 14, 7.5, "roomB")
  Spawn("chest", 17, 7.5, "storageB")
  Spawn("generic", 12, 3.5)
  Spawn("key", 14, 3.5)
  Spawn("generic", 16, 3.5)
end

function storageA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
end
  Spawn("player", 6.5, 9)
end

function storageB(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
ooooowwwwwwwwwwooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
end
  Spawn("player", 13.5, 9)
end

function roomA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
o..................o
o...............789o
owwwwwwwwwwwwwww456o
owwwwwwwwwwwwwww123o
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])
  Spawn("yield", 17.5, 13)
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o...............789o
o...............456o
o...............123o
oooooooooooooooooooo
]])
end
  Spawn("player", 10, 13)
  Global("generic", 5.5, 13.5)
end

function roomB(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oo.................o
oo.................o
o..................o
o.....ooooooooooo..o
o...............o..o
oooo............o..o
oooo.wwwwwwwwwwwo..o
oooo.wwwwwwwwwwoo..o
oooo-oooooooooooo..o
oooooowwwoooooooowwo
oowwwwwwwwwwwwwwwwwo
oowwwwwowwwwwwwwwwwo
oowwwwwowwwwwwwwwwwo
oooooooooooooooooooo
]])
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oo.................o
oo.................o
o..................o
o.....ooooooooooo..o
o...............o..o
oooo............o..o
oooo............o..o
oooo...........oo..o
oooo-oooooooooooo..o
oooooo...oooooooo..o
oo.................o
oo.....o...........o
oowwwwwowwwwwwwwwwwo
oooooooooooooooooooo
]])
end
  Spawn("player", 7.5, 8)
  Spawn("yield", 11.5, 8)
  Spawn("lock", 1.5, 4.5)
  Spawn("lock", 4.5, 7.5)
  Global("lock", 10.5, 2.5)
  Spawn("crystal", 3.5, 12.5)
end

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

function reject(is_wet)
  ApplyTiles(black, 0, 0, [[
oosooooooosooooooooo
ooooooosoooo.......o
oooooooooooo.......o
oosooooosooo.......o
oooooooooooooooo...o
o..................o
o..................o
o..................o
ooooooo............o
o.....o.-..........o
o.....o............o
o--o..oooooo.......o
o..o...............o
o..o..............oo
o--oooooooooooooooos
]])
  Spawn("player", 2, 13)
  Spawn("fan", 2.5, 7.5)
  Spawn("key", 4.5, 6.5)
  Spawn("lock", 6.4, 6.5)
  Spawn("lock", 7.5, 9.5)
  Spawn("generic", 9.5, 13.5)
  Spawn("diamond", 13.5, 2.5)
  Spawn("lock", 15.5, 2.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }