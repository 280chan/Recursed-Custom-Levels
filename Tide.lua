local metal = { o = "box", ["="] = "girder_h", ["|"] = "girder_v",
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }
local black = { o = "glitch", s = "glitchd", ["-"] = "glitchledge", a = "acid" }
local crazy = { o = "glitch", z = "block_ul", ["#"] = "ceil", ["?"] = "pillar",
                ["1"] = "char0", ["2"] = "char2", ["3"] = "char3",
                ["4"] = "block", ["5"] = "box" }

function start(is_wet)
ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
o...............oooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwoooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])

  Global("chest", 8, 13.5, "roomA")
  Spawn("player", 10, 13)
end

function roomA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
o...............oooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwoooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])
else
	ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
o...............oooo
o..................o
o..................o
o..............ooooo
o..................o
o..................o
owwwwwwwwwwwwwoooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])
end
  Spawn("player", 10, 13)
  Spawn("crystal", 17.5, 2.5)
  Spawn("generic", 6, 13.5)
  Spawn("yield", 14, 13)
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
oooooooooooooooooooo
o..................o
o..................o
o..................o
o-oooooooooooooooooo
o..................o
o..................o
o--oooooooooooo....o
o..o...............o
o..o...............o
o..o...............o
o..o.......ooooooooo
o..oaaaaaaaoososoooo
o..oaaaaaaaoooooooso
o..ooooooooooosooooo
]])
  Spawn("player", 5, 13)
  Global("key", 7, 13.5)
  Spawn("fan", 9, 13.5)
  Global("lock", 11.5, 9.5)
  Spawn("lock", 13, 9.5)
  Spawn("lock", 14.5, 9.5)
  Global("generic", 17, 10.5)
  Spawn("generic", 7.5, 3.5)
  Spawn("lock", 11.5, 2.5)
  Spawn("diamond", 16.5, 2.5)
end



tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }