local metal = { o = "box", x = "ceil", ["|"] = "pillar",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                ["="] = "girder_h", 
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge", a = "acid",
				["h"] = "block_ul", ["j"] = "block_u", ["k"] = "block_ur",
                ["b"] = "block_l", ["n"] = "block", ["m"] = "block_r",

				s = "watersurface", ["q"] = "acidsurface"}
local black = { o = "glitch", h = "glitchd", ["-"] = "glitchledge", w = "water", a = "acid", ["="] = "acidledge", s = "watersurface", ["q"] = "acidsurface"}
local crazy = { o = "glitch", z = "block_ul", ["#"] = "ceil", ["?"] = "pillar",
                ["1"] = "char0", ["2"] = "char2", ["3"] = "char3",
                ["4"] = "block", ["5"] = "box" }
				
-- main
				
function start()
ApplyTiles(metal, 0, 0, [[
..|nnnnnnnnnnnnnn|..
.hjjjjjjjjjjjjjjjjk.
.bnnnnnnnnnnnnnnnnm.
.bnnnnnnnnnnnnnnnnm.
jjkxxxxxxxxxxxxxxhjj
nnm..............bnn
nnm..............bnn
nnm..............bnn
nnm..............bnn
nnm..............bnn
nnmjjjjjjjjjjjjjjbnn
nnmnnnnnnnnnnnnnnbnn
nnmnnnnnnnnnnnnnnbnn
nnmnnnnnnnnnnnnnnbnn
nnmnnnnnnnnnnnnnnbnn
]])
  Global("generic", 10, 9.5)
  Spawn("chest", 7.5, 9.5, "keyr")
  Spawn("chest", 12.5, 9.5, "wet")
  Spawn("player", 5.5, 9)
end

function wet(is_wet)
if is_wet then
ApplyTiles(metal, 0, 0, [[
nnnnnnnnnnnnnnnnnnnn
nnhjjjjjjjjjjjjjjknn
nnbnnnnnnnnnnnnnhjjj
nnbnnnnnnnnnnnnnbnnn
jjjjkxxxxxxxxxxxbnnn
nnnnm...........bnnn
nnnnm...........bnnn
nnnnm...........bnnn
jjjjjjjjjjjjk...bnnn
nnnnnnnnnnnnmsssbnnn
nnnnnnnnnnnnmwwwbnnn
nnnnhjjjjjjjjjjjjjjj
nnnnbnnnnnnnnnnnnnnn
nnnnbnnnnnnnnnnnnnnn
nnnnbnnnnnnnnnnnnnnn
]])
else
ApplyTiles(metal, 0, 0, [[
nnnnnnnnnnnnnnnnnnnn
nnhjjjjjjjjjjjjjjknn
nnbnnnnnnnnnnnnnhjjj
nnbnnnnnnnnnnnnnbnnn
jjjjkxxxxxxxxxxxbnnn
nnnnm...........bnnn
nnnnm...........bnnn
nnnnm...........bnnn
jjjjjjjjjjjjk...bnnn
nnnnnnnnnnnnm...bnnn
nnnnnnnnnnnnmsssbnnn
nnnnhjjjjjjjjjjjjjjj
nnnnbnnnnnnnnnnnnnnn
nnnnbnnnnnnnnnnnnnnn
nnnnbnnnnnnnnnnnnnnn
]])
end
  Spawn("player", 7, 7)
  Spawn("lock", 9.5, 6.5)
  Spawn("yield", 11.5, 7)
end

function keyr(is_wet)
if is_wet then
ApplyTiles(metal, 0, 0, [[
aaa|xxxxxxxxxxxx|aaa
aaa|aaaaaaaaaaaa|aaa
aaa|aaaaaaaaaaaa|aaa
aaa|aaaaaaaaaaaa|aaa
aaa|xxxxxxxxoaaa|aaa
aaa|aaaaaaaaaaaa|aaa
aaa|aaaaaaaaaaaa|aaa
aaa|aaaaaaaaaaaa|aaa
ahjjjjjjjjjjjjjjjjka
abnnnnnnnnnnnnnnnnma
abnnnnnnnnnnnnnnnnma
abnnnnnnnnnnnnnnnnma
abnnnnnnnnnnnnnnnnma
abnnnnnnnnnnnnnnnnma
abnnnnnnnnnnnnnnnnma
]])
else
ApplyTiles(metal, 0, 0, [[
...|xxxxxxxxxxxx|...
...|............|...
...|............|...
...|............|...
...|xxxxxxxxo...|...
...|............|...
...|............|...
...|............|...
.hjjjjjjjjjjjjjjjjk.
.bnnnnnnnnnnnnnnnnm.
.bnnnnnnnnnnnnnnnnm.
.bnnnnnnnnnnnnnnnnm.
.bnnnnnnnnnnnnnnnnm.
.bnnnnnnnnnnnnnnnnm.
.bnnnnnnnnnnnnnnnnm.
]])
end
  Global("chest", 9.5, 3.5, "crys")
  Spawn("player", 7, 7)
  Spawn("key", 12, 7.5)
end

function crys(is_wet)
if is_wet then
ApplyTiles(metal, 0, 0, [[
nnnnnnnnnnnnnnnnnnnn
nnnnoxxxxxxxxxxxxxxo
nnnn|..............|
oxxxo..............|
|..................|
|..............oxxx|
|..................|
|xxxo..............|
|..................|
|ssssssssssssshjjjjj
|wwwwwwwwwwwwwbnnnnn
jjjjjjjjjjjjjjbnnnnn
nnnnnnnnnnnnnnbnnnnn
nnnnnnnnnnnnnnbnnnnn
nnnnnnnnnnnnnnbnnnnn
]])
else
ApplyTiles(metal, 0, 0, [[
nnnnnnnnnnnnnnnnnnnn
nnnnoxxxxxxxxxxxxxxo
nnnnm..............|
oxxxo..............|
|..................|
|..............oxxx|
|..................|
|xxxo..............|
|..................|
|.............hjjjjj
|.............bnnnnn
jjjjjjjjjjjjjjbnnnnn
nnnnnnnnnnnnnnbnnnnn
nnnnnnnnnnnnnnbnnnnn
nnnnnnnnnnnnnnbnnnnn
]])
end
  Spawn("player", 2.5, 10)
  Spawn("crystal", 17.5, 3.5)
  Spawn("lock", 15.5, 3.5)
  Spawn("lock", 4.5, 5.5)
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
oooooooooooo.......o
ooooooohoooo.......o
oooooooooooo.......o
oooooooooooo.......o
ooohoooooooo.......o
oooooooooooo..oooooo
oooo..........oooooo
oooo..........oooooo
oooo..........oooooo
o....ooo---ooooooooo
o....ooo...oooooohoo
o....ooo...ooooooooo
o....ooooooooohooooo
oooo-ooooooooooooooo
]])
  Spawn("player", 9.5, 12)
  Global("chest", 2.5, 13.5, "flood")
  Spawn("lock", 11.5, 8.5)
  Spawn("diamond", 16.5, 3.5)
  
end

function flood(is_wet)
if is_wet then
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
ooooo..............o
ooooo..............o
ooooo..............o
oohoo........-oooooo
ooooo.........ooooho
ooooo.........oooooo
o............-oooooo
o.............oooooo
o.............oooooo
osssoqqqqqqqq=oooooo
owwwoaaaaaaaaaoooooo
owwwo=aaaaaaaaooohoo
owwwoaaaaaaaa=oooooo
oooooooooooooooooooo
]])
else
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
ooooo..............o
ooooo..............o
ooooo..............o
oohoo........-oooooo
ooooo.........ooooho
ooooo.........oooooo
o............-oooooo
o.............oooooo
o.............oooooo
ossso........-oooooo
owwwo.........oooooo
owwwo-........ooohoo
owwwo........-oooooo
oooooooooooooooooooo
]])
end
  Spawn("player", 10, 13)
  Spawn("yield", 16.5, 3)
  Global("fan", 7.5, 13.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }