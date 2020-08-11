local metal = { o = "box", x = "ceil", ["|"] = "pillar",
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge", 
				["h"] = "block_ul", ["j"] = "block_u", ["k"] = "block_ur",
                ["b"] = "block_l", ["n"] = "block", ["m"] = "block_r",
				["7"] = "buoyul", ["8"] = "buoyu", ["9"] = "buoyur",
				["4"] = "buoyl", ["5"] = "buoyc", ["6"] = "buoyr",
				["1"] = "buoydl", ["2"] = "buoyd", ["3"] = "buoydr", s = "watersurface"}
local black = { o = "glitch", s = "glitchd", ["-"] = "glitchledge", a = "acid", t = "acidsurface" }
local crazy = { o = "glitch", z = "block_ul", ["#"] = "ceil", ["?"] = "pillar",
                ["1"] = "char0", ["2"] = "char2", ["3"] = "char3",
                ["4"] = "block", ["5"] = "box", ["-"] = "ledge" }

function start()
ApplyTiles(metal, 0, 0, [[
xxxxxxxxxxxxxxxxxxxx
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|ssshjjjjjjjjjjksss|
|wwwbnnnnnnnnnnmwww|
jjjjjjjknnnnhjjjjjjj
nnnnnnnmnnnnbnnnnnnn
nnnnnnnmnnnnbnnnnnnn
nnnnnnnmnnnnbnnnnnnn
nnnnnnnmxxxxbnnnnnnn
]])

  Spawn("chest", 2.5, 9.5, "roomA")
  Spawn("player", 7.5, 7)
  Spawn("box", 12.5, 7.5)
  Spawn("chest", 17.5, 9.5, "store")
end

function store(is_wet)
if is_wet then
ApplyTiles(metal, 0, 0, [[
jjjjjjknnnnnnhjjjjjj
xxxonnmxxxxxxbnnoxxx
889|nnm788889bnn|788
..6|nnm4....6bnn|4..
..6|nnm4....6bnn|4..
..6|nnm4....6bnn|4..
..6|nnm4....6bnn|4..
223|nnm122223bnn|122
www|nnmwwwwwwbnn|www
www|nnmwwwwwwbnn|www
www|nnmwwwwwwbnn|www
www|nnmwwwwwwbnn|www
www|nnmwwwwwwbnn|www
www|nnmwwwwwwbnn|www
www|nnm------bnn|www
]])
  Spawn("player", 10, 6)
else
ApplyTiles(metal, 0, 0, [[
jjjjjjknnnnnnhjjjjjj
xxxonnmxxxxxxbnnoxxx
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
...|nnm......bnn|...
889|nnm788889bnn|788
..6|nnm4....6bnn|4..
..6|nnm4....6bnn|4..
..6|nnm4----6bnn|4..
]])
  Spawn("player", 10, 13)
end
  Global("generic", 8.5, 6.5)
  Global("generic", 11.5, 6.5)
end

function roomA(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
xxxxo.....oxxxxxxxxx
|...|..............|
|...o..............|
|......o...........|
|......|o..........|
|......|oo.........|
oxxxxxxxxxo........|
789.......|........|
456.......oxxo.....|
456ssso.........789|
456www|sssssssss456|
123www|wwwwwwwww456|
wwwwww|---------123|
wwwwww|wwwwwwwwwwww|
xxxxxxowwwwwwwwwwwo|
]])
  Spawn("generic", 1.5, 13.5)
else
	ApplyTiles(metal, 0, 0, [[
xxxxo.....oxxxxxxxxx
|...|..............|
|...o..............|
|......o...........|
|......|o..........|
|......|oo.........|
oxxxxxxxxxo........|
..........|........|
..........oxxo.....|
789...o............|
456...|.........789|
456...|.........456|
456...|---------456|
123...|.........123|
xxxxxxo...........o|
]])
end
  Spawn("crystal", 2.5, 2.5)
  Spawn("player", 3.6, 13)
  Spawn("yield", 5.4, 13)
  Spawn("lock", 7.5, 1.5)
  Spawn("chest", 12.5, 7.5, "keyroom")
end

function keyroom(is_wet)
if is_wet then
  ApplyTiles(metal, 0, 0, [[
|.................ox
|..................|
jko................|
nm.................|
nm...............hjj
xo...............bnn
|789.............bnn
|456.............bnn
|456...........hjjjj
|456...........bnnnn
|456hjk........bnnnn
|456bnmssssssssbnnnn
|456bnmwwwwwwhjjjjjj
|456bnmwwwwwwbnnnnnn
k456bnmxxxxxxbnnnnnn
]])
else
	ApplyTiles(metal, 0, 0, [[
|.................ox
|..................|
jko................|
nm.................|
nm...............hjj
xo...............bnn
|................bnn
|................bnn
|789...........hjjjj
|456...........bnnnn
|456hjk........bnnnn
|456bnm........bnnnn
|456bnm......hjjjjjj
|456bnm......bnnnnnn
k456bnmxxxxxxbnnnnnn
]])
end
  Spawn("player", 8.5, 13)
  Spawn("key", 2, 1.5)
end

function glitch()
  ApplyTiles(crazy, 0, 0, [[
o##oo521...54o?oo.??
##o.o43...3215oo.o.o
o#oo5o21....432oo.o.
.#o.o43......15ooo.o
.#ooz1.......4o2o14.
.#ooz1o......4o2o14.
.#o.o43######15ooo.o
.#o.o43......15ooo.o
.#ooz1o......4o2o14.
.#z#oo2------o3o?zzo
###o4o.......ooooooo
.#z#o2........3o?zzo
#o4o...........ooooo
.#o2............3o?z
#o4o.............ooo
]])
  Spawn("player", 9.4, 8)
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
o--ooooooooooooo...o
o..o...............o
o..o...............o
o..o...............o
o..o........oooooooo
o..ottttttttososoooo
o..oaaaaaaaaooooooso
o..ooooooooooosooooo
]])
  Spawn("player", 5, 13)
  Global("key", 7, 13.5)
  Spawn("fan", 9, 13.5)
  Global("lock", 12.5, 9.5)
  Spawn("lock", 14, 9.5)
  Spawn("lock", 15.5, 9.5)
  Spawn("generic", 7.5, 3.5)
  Spawn("lock", 12.5, 2.5)
  Spawn("diamond", 16.5, 2.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }