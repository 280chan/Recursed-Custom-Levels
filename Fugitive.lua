local metal = { o = "box", ["="] = "girder_h", ["|"] = "girder_v",
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
o........oo........o
o........oo........o
o........oo........o
o........oo........o
o........oo........o
o........oo........o
o........oo........o
o........oo........o
oooooooo....oooooooo
oooooooo....oooooooo
oooooooo....oooooooo
oooooooo----oooooooo
oooooooo....oooooooo
oooooooo....oooooooo
]])

  Global("generic", 3, 8.5)
  Spawn("player", 5, 8)
  Spawn("chest", 7, 8.5, "roomA")
  Spawn("chest", 13, 8.5, "roomB")
  Global("generic", 15, 8.5)
  Spawn("generic", 17, 8.5)
end

function roomA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
oooooooooooooowwwwwo
owwwwwwwwwwwwooowwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwooooooowwwwwwwwo
owwwo.....owwwwwoooo
owwwo.....owwwwwwwwo
owwwo.....owwwwwwwwo
owwwo.....owwwwwwwwo
owwwwwwwwwowwwwwwwwo
owwwwwwwwwowwwwwwwwo
oooooooooooooooooooo
]])
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
oooooooooooooo.....o
o............ooo...o
o..................o
o..................o
o...ooooooo........o
o...o.....owwwwwoooo
o...o.....owwwwwwwwo
o...o.....owwwwwwwwo
o...o.....owwwwwwwwo
owwwwwwwwwowwwwwwwwo
owwwwwwwwwowwwwwwwwo
oooooooooooooooooooo
]])
end
  Spawn("player", 2.5, 2)
  Spawn("yield", 5.5, 2)
  Spawn("key", 8.5, 2.5)
  Spawn("crystal", 7.5, 9.5)
  Global("box", 7.5, 13.5)
  Spawn("lock", 5.5, 5.5)
  Spawn("lock", 7.5, 5.5)
  Spawn("lock", 9.5, 5.5)
end

function roomB(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o789oooooooooooooooo
o456wwwwwwwwwwwwwwwo
o123wwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwoooooooooooooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])
  Spawn("player", 2.5, 2)
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o...oooooooooooooooo
o..................o
o..................o
o..................o
o..................o
o..................o
o789oooooooooooooooo
o456wwwwwwwwwwwwwwwo
o123wwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])
  Spawn("player", 2.5, 8)
end
  Spawn("yield", 5.5, 8)
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
oosooooooooooooooooo
oooo......o........o
osoo......o........o
oooo..o...o....o...o
sooo..o...oooooo...o
oooo..o............o
ooso..o............o
oooo..oooooooooooooo
o..................o
o..................o
o.....ooooooooaaaaao
o--o.........oaaaaao
o..o.........oaaaaao
o..o.........oaaaaao
o--ooooooooooooooooo
]])
  Spawn("player", 2, 13)
  Spawn("key", 5.5, 13.5)
  Spawn("lock", 7.5, 12.5)
  Spawn("lock", 9.5, 12.5)
  Spawn("fan", 11.5, 13.5)
  Spawn("generic", 7.5, 9.5)
  Spawn("generic", 9.5, 9.5)
  Spawn("diamond", 12.5, 2.5)
end



tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }