local metal = { o = "box", O = "monobox", T = "pave", x = "ceil", ["|"] = "pillar", 
				a = "acid", w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge",
				["h"] = "block_ul", ["j"] = "block_u", ["k"] = "block_ur",
                ["b"] = "block_l", ["n"] = "block", ["m"] = "block_r",
				["7"] = "buoyul", ["8"] = "buoyu", ["9"] = "buoyur",
				["4"] = "buoyl", ["5"] = "buoyc", ["6"] = "buoyr",
				["1"] = "buoydl", ["2"] = "buoyd", ["3"] = "buoydr"}
local black = { o = "glitch", s = "glitchd", ["-"] = "glitchledge", w = "water", a = "acid",
				["7"] = "buoyul", ["8"] = "buoyu", ["9"] = "buoyur",
				["4"] = "buoyl", ["5"] = "buoyc", ["6"] = "buoyr",
				["1"] = "buoydl", ["2"] = "buoyd", ["3"] = "buoydr"}

function start()
  ApplyTiles(metal, 0, 0, [[
nnm...............|.
nnm...............|.
nnm...............|.
nnm...............|.
nnm..............hjj
nnm..........o...bnn
nnm..........|...bnn
nnm..........|...bnn
jjjjjjjjjjjjjk...bnn
nnnnnnnnnnnnnmo.obnn
nnnnnnnnnnnnnmjjjbnn
nnnnnnnnnnnnnmnnnbnn
nnnnnnnnnnnnnmnnnbnn
nnnnnnnnnnnnnmnnnbnn
nnnnnnnnnnnnnmnnnbnn
]])
  Spawn("player", 5, 7)
  Spawn("key", 7.5, 7.5)
  Spawn("key", 10.5, 7.5)
  Spawn("box", 15, 8.5)
  Spawn("box", 16, 8.5)
  Spawn("chest", 15.5, 9.5, "goal")
end

function goal()
  ApplyTiles(metal, 0, 0, [[
nnnn|xxxxxxxxxxxxxx|
nnnn|..............|
nnnn|..............|
nnnn|..............|
xxxxoxxxxo.........|
|........|.......ox|
|........|.........|
|........|o........|
|.oo-oxxx|.........|
|........|.......ox|
|........|.........|
jk.oxo.o.oo........|
nm.....|...........|
nm.....|........hjjj
nmjjjjjjjjjjjjjjbnnn
]])
  Spawn("player", 3, 7)
  Global("lock", 4.5, 9.5)
  Global("lock", 5.51, 6.5)
  Spawn("crystal", 6.5, 2.5)
  Global("chest", 7.5, 7.5, "goal")
  Spawn("lock", 8.5, 2.5)
  Spawn("lock", 18.5, 7.5)
end

-- paradox. It is a pit that the fan doesn't work on locks. The green lock was designed not green.
function reject()
  ApplyTiles(black, 0, 0, [[
oooooooooo.......ooo
oooooooooo.......oso
oooooooooo.......ooo
oooooooooooooo...ooo
ooo..........o...ooo
ooo..........o...ooo
ooo..........o...ooo
ooo..........o...ooo
ooo..........o...ooo
ooo...o..........ooo
ooo...o..........ooo
ooo...o..........ooo
ooo---oooooooooooooo
oso...ooooooooooooso
ooo...oooooooooooooo
]])

  Spawn("player", 10.5, 11)
  Spawn("diamond", 11.5, 1.5)
  Global("lock", 13.5, 10.5)
  Spawn("lock", 3.95, 13.5)
  Spawn("lock", 5.05, 13.5)
  Spawn("chest", 4.5, 11.5, "loop")
end

function loop(is_wet)
if is_wet then
ApplyTiles(black, 0, 0, [[
oaaaaaaaaoaaaaaaaaao
oaaaaaaaaoaoaaaoaaao
oaaaoaaaaoaoaaaoaaao
oaaaoaaaaoaoooooaaao
oaaaoaaaaoaoaaaaaaao
o---o-aaaoaoaaaaaaao
oaaaoaaaaoaoaaaooooo
oaaaoaaaaoaoaaaoooso
oaaao-aaaoaoaaaooooo
oaaaoaaaaoaoaaaooooo
oaaaoaaaaoaoaaaooooo
oaaao-aaaoaoaaaooooo
oaaaoaaaaaaaaaaooooo
oaaaoaaaaaaaaaaosooo
oaaaoooooooo---ooooo
]])
else
ApplyTiles(black, 0, 0, [[
o........o.........o
o........o.o...o...o
o...o....o.o...o...o
o...o....o.ooooo...o
o...o....o.o.......o
o---o-...o.o.......o
o...o....o.o...ooooo
o...o....o.o...oooso
o...o-...o.o...ooooo
o...o....o.o...ooooo
o...o....o.o...ooooo
o...o-...o.o...ooooo
o...o..........ooooo
o...o..........osooo
o...oooooooo---ooooo
]])
end
  Spawn("player", 2.5, 4)
  Global("fan", 6.1, 13.5)
  Global("chest", 7.5, 13.5, "loop")
  Spawn("chest", 12.5, 2.5, "storage")
  Spawn("chest", 13, 2.5, "storage")
  Spawn("chest", 13.5, 2.5, "storage")
  Spawn("chest", 14, 2.5, "storage")
  Spawn("chest", 14.5, 2.5, "storage")
end

function storage(is_wet)
if is_wet then
ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooaaaaaaaaaaaaaaooo
oooaaaaaaaaaaaaaaooo
oooaaaaaaaaaaaaaaooo
oooaaaooaaaaooaaaooo
oooaaaaoaaaaoaaaaooo
oooaaaaooaaooaaaaooo
oooaaaaaoaaoaaaaaooo
oooaaaaaooooaaaaaooo
oooaaaaaaooaaaaaaooo
oooaaaaaaooaaaaaaooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
else
ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo...ooaaaaoo...ooo
ooo....oaaaao....ooo
ooo....ooaaoo....ooo
ooo.....oaao.....ooo
ooo.....oooo.....ooo
ooo......oo......ooo
ooo......oo......ooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
end
  Spawn("player", 5.5, 11)
  Global("key", 10, 8.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }
