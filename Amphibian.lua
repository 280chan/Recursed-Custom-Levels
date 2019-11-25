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

function start(is_wet)
ApplyTiles(metal, 0, 0, [[
xxxxxxxxxxxxxxxxxxxx
|aaaaaaaa||aaaaaaaa|
|aaaaaaaa||aaaaaaaa|
|aaaaaaaa||aaaaaaaa|
|aaoxxxxx||xxxxxoaa|
|aaaaaaaa||aaaaaaaa|
|aaaaaaaa||aaaaaaaa|
|aaaaaaaa||aaaaaaaa|
jjjjjjkoa||aohjjjjjj
nnnnnnm.a||a.bnnnnnn
nnnnnnm.a||a.bnnnnnn
nnnnnnm.oooo.bnnnnnn
nnnnnnm......bnnnnnn
nnnnnnm......bnnnnnn
nnnnnnm------bnnnnnn
]])

  Spawn("player", 10, 13)
  Spawn("generic", 6, 3.5)
  Spawn("chest", 4.5, 7.5, "roomA")
  
  Spawn("chest", 15.5, 7.5, "roomB")
  Spawn("generic", 13, 3.5)
  Spawn("box", 15, 3.5)
end

function roomA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
nnmnnn|xxxxxxx|nnnnn
nnmnnn|.......|nnnnn
nnmnnn|.......|nnhjj
nnmxxxo.......oxxbnn
nnm......789.....bnn
nnm......456.....bnn
nnm......123.....bnn
nnm...oxowwwoxo..bnn
nnm...|n|www|n|..bnn
nnmwww|n|www|n|..bnn
jjjjjjjjjjjjjjk--bnn
nnnnnnnnnnnnnnm..bnn
nnnnnnnnnnnnnnm..bnn
nnnnnnnnnnnnnnm..bnn
nnnnnnnnnnnnnnm..bnn
]])
else
	ApplyTiles(metal, 0, 0, [[
nnmnnn|xxxxxxx|nnnnn
nnmnnn|.......|nnnnn
nnmnnn|.......|nnhjj
nnmxxxo.......oxxbnn
nnm..............bnn
nnm..............bnn
nnm..............bnn
nnm...oxo789oxo..bnn
nnm...|n|456|n|..bnn
nnm...|n|123|n|..bnn
jjjjjjjjjjjjjjk--bnn
nnnnnnnnnnnnnnm..bnn
nnnnnnnnnnnnnnm..bnn
nnnnnnnnnnnnnnm..bnn
nnnnnnnnnnnnnnm..bnn
]])
end
  Spawn("player", 4.5, 9)
  Global("generic", 10.5, 3.5)
end

function roomB(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
nnnnnnn|nnnnnnnnnnbn
nnnnnnn|xxxxxxxxxxbn
nnnnnnn|..........bn
nnnnnnn|..........bn
nnnnoxxo...oxxxo..bn
nnnn|......|......bn
nnnn|......|......bn
noxxo...oxxo..o...bn
n|......|789..|...bn
n|......|456..|...bn
n|wwwhjjk123ww|wwwbn
n|wwwbnnmwwwhjjjjjjj
n|wwwbnnmwwwbnnnnnnn
jjjjjbnnmwwwbnnnnnnn
nnnnnbnnmxxxbnnnnnnn
]])
else
	ApplyTiles(metal, 0, 0, [[
nnnnnnn|nnnnnnnnnnbn
nnnnnnn|xxxxxxxxxxbn
nnnnnnn|..........bn
nnnnnnn|..........bn
nnnnoxxo...oxxxo..bn
nnnn|......|......bn
nnnn|......|......bn
noxxo...oxxo..o...bn
n|......|.....|...bn
n|......|.....|...bn
n|...hjjk.....|...bn
n|...bnnm789hjjjjjjj
n|...bnnm456bnnnnnnn
jjjjjbnnm123bnnnnnnn
nnnnnbnnmxxxbnnnnnnn
]])
  Spawn("crystal", 10.5, 9.5)
end
  Spawn("player", 3.5, 12)
end

function reject(is_wet)
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
oooooo.o...ooooooooo
oooooo.o...ooosooooo
oosooo.o...ooooooooo
oooooo.ooooooooooooo
oooooo.ooooooooooooo
o....o.oooooooooosoo
o....o.ooooooooooooo
o........ooooooooooo
owwo.....oosoooooooo
owwo.....ooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 2.5, 3)
  Spawn("chest", 9.5, 6.5, "keyroom")
  Global("lock", 13.5, 2.5)
  Spawn("lock", 15.5, 2.5)
  Spawn("diamond", 17.5, 2.5)
  Spawn("chest", 6.5, 13.5, "trap")
end

function keyroom(is_wet)
if is_wet then
  ApplyTiles(black, 0, 0, [[
oooooooooooo......oo
oooooooooooo......oo
oooooooooooo......oo
oooooooooooo...ooooo
ooooooooo......ooooo
ooooooooo......ooooo
ooooooooo......ooooo
ooooooooo...oooooooo
oooooo......oooooooo
oooooo......oooooooo
oooooo......oooooooo
ooo......ooooooooooo
ooo......ooooooooooo
ooowwwwwwooooooooooo
oooooooooooooooooooo
]])
else
  ApplyTiles(black, 0, 0, [[
oooooooooooo......oo
oooooooooooo......oo
oooooooooooo......oo
oooooooooooo...ooooo
ooooooooo......ooooo
ooooooooo......ooooo
ooooooooo......ooooo
ooooooooo...oooooooo
oooooo......oooooooo
oooooo......oooooooo
oooooo......oooooooo
ooo......ooooooooooo
ooo......ooooooooooo
ooo......ooooooooooo
oooooooooooooooooooo
]])
end
  Spawn("player", 4.5, 13)
  Global("fan", 7.5, 13.5)
  Spawn("key", 16.5, 2.5)
end


function trap(is_wet)
if is_wet then
ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
889oooo788889oooo788
..6oooo4....6oooo4..
..6oooo4....6oooo4..
..6oooo4....6oooo4..
ww6oooo4wwww6oooo4ww
223oooo122223oooo122
wwwoooowwwwwwoooowww
wwwoooowwwwwwoooowww
wwwoooowwwwwwoooowww
wwwoooowwwwwwoooowww
wwwoooowwwwwwoooowww
wwwoooowwwwwwoooowww
wwwoooo------oooowww
]])
  Spawn("player", 9, 6)
else
ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
...oooo......oooo...
889oooo788889oooo788
..6oooo4....6oooo4..
..6oooo4....6oooo4..
..6oooo4----6oooo4..
]])
  Spawn("player", 9, 13)
end
  Global("generic", 11, 6.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }