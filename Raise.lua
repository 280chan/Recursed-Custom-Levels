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
nm.....|..........hj
nmjjjjjjjjjjjjjjjjbn
]])
  Spawn("player", 3, 7)
  Global("lock", 4.5, 9.5)
  Global("lock", 5.51, 6.5)
  Spawn("crystal", 6.5, 2.5)
  Global("chest", 7.5, 7.5, "goal")
  Global("lock", 8.5, 2.5)
  Global("lock", 18.5, 7.5)
end

-- not done
function reject()
  ApplyTiles(black, 0, 0, [[
ooooooooooo......ooo
ooooooooooo......ooo
ooooooooooo......ooo
oooooooooooooo...ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..........o---ooo
ooo..........o...ooo
ooo..........o...ooo
ooo..........o---ooo
ooooooo------o...ooo
ooooooo......o...ooo
ooooooo......ooooooo
]])

  Spawn("player", 15.5, 13)
  Spawn("diamond", 11.5, 1.5)
end

function dia(is_wet)
if is_wet then

else
  ApplyTiles(black, 0, 0, [[
ooooooo.o........ooo
ooooooo.o.oooooaaooo
ooooooo.o.o...oaaooo
ooooooo.o.o...oooooo
ooooooo.o.o......ooo
ooooooo.o.o......ooo
ooo.....o.o......ooo
ooo.....o.o......ooo
ooo.....o.o......ooo
ooo.ooooo.o......ooo
ooo.......o......ooo
ooo.......o......ooo
ooo.......o......ooo
ooosoooooooooooooooo
oooooooooooooooooooo
]])
end

  Spawn("player", 10, 12)
  Spawn("diamond", 15.5, 3.5)
  Global("fan", 16.6, 7.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }
