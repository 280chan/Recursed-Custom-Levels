local metal = {["7"] = "buoy_ul", ["9"] = "buoy_ur",
                ["4"] = "buoy_l", ["6"] = "buoy_r",
                ["1"] = "buoy_dl", ["3"] = "buoy_dr",
                ["<"] = "widdershins", [">"] = "clockwise",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                o = "box", ["="] = "girder_h", ["|"] = "girder_v",
                w = "water", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }			
local crazy = { g = "glitch", V = "cloud", [":"] = "wetbox", ["+"] = "girder",
                ["/"] = "ledge", ["&"] = "glitchledge", ["~"] = "cloudledge",
                ["-"] = "clockwise", ["*"] = "widdershins" }
local black = { o = "glitch", s = "glitchhole", ["-"] = "glitchledge", w = "water"}

function start(is_wet)
ApplyTiles(metal, 0, 0, [[
:':|:'E======F79|':'
':'|'oo......o13|:':
:':|oo........oo|789
':'oo..........oo456
:'oo............o123
=oo..............oo=
6o................o4
6wwwwwwwwwwwwwwwwww4
6owwwwwwwwwwwwwwwwo4
79owwwwwwwwwwwwwwo79
13|owwwwwwwwwwwwo|13
7889owwwwwwwwwwo7889
4556|owwwwwwwwo|4556
455679owwwwwwo794556
122313oooooooo131223
]])

  Spawn("player", 10, 12)
  Spawn("chest", 4, 9, "roomA")
  Global("generic", 16, 9);
end

function roomA(is_wet)
if is_wet then
    ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
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
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
oooooooooooooooooooo
]])
end
  Spawn("player", 5, 12)
  Spawn("chest", 6, 12, "roomB")
  Spawn("yield", 17.5, 12)
end

function roomB(is_wet)
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
  Spawn("player", 12, 12)
  Spawn("crystal", 17.5, 2.5)
end

function glitch(is_wet)
  ApplyTiles(crazy, 0, 0, [[
*.gVgVg:/-.....&.g..
-/V~../:V*.g--/.:./.
g--.-g.-:/-/:/&..&.g
~:&..+:.&+..g/g&.--/
.;..//-.....~-..g...
.;V&:...........~-gg
&.;;............-V./
./.:............-:V-
*g..g...........-.V.
/-V/;...........~.g/
./&-&g.........g**g.
*gV*~~/&gg::+//.&--&
.:.g//&:/+&:~~g-;/.+
..//-:-V://-g::~--;.
-&&/~/:-V-&/--&.+-&~
]])
  Spawn("player", 9.5, 10)
end

function reject()
  ApplyTiles(black, 0, 0, [[
o..................o
o..................o
o..................o
ooooo----ooooooooooo
ooooo......o.......o
ooooo......o.......o
ooooo......o.......o
ooooo......ooooo...o
o..........o.......o
o..........o.......o
o...o....o.o.......o
o...o....o.....ooooo
o...o....o.....ooooo
ooooo....o.....ooooo
oooooooooooooooooooo
]])
  Global("key", 2.5, 12.5)
  Spawn("fan", 6, 13.5)
  Spawn("player", 8, 13)
  Spawn("lock", 15.5, 5.5)
  Spawn("lock", 15.5, 9.5)
  Spawn("diamond", 13.5, 5.5)
  Spawn("chest", 13.5, 2.5, "loop")
end

function loop(is_wet)
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
ooooo------ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..................o
o..................o
o..................o
o..........ooooo...o
o..........ooooo...o
o..........ooooo...o
oooooooooooooooooooo
]])
  Spawn("chest", 17.5, 13.5, "empty")
  Global("fan", 4.5, 13.5)
  Spawn("player", 7.5, 13)
  Global("chest", 13.5, 3.5, "loop")
end

function empty(is_wet)
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
o..........ooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 2.5, 13)
end

tiles = "tiles/clockwork"
pattern = "backgrounds/tubes"
dark = { start = { 0.1, 0.02, 0.04 }, reject = {0.06, 0.17, 0.21} }
light = { start = {0.24, 0.07, 0.10}, reject = {0.1, 0.25, 0.33} }