local metal = { w = "water", ["^"] = "water_s",
				["<"] = "wingwet_l", [">"] = "wingwet_r",
                ["7"] = "buoy_ul", ["9"] = "buoy_ur",
                ["4"] = "buoy_l", ["6"] = "buoy_r",
                ["1"] = "buoy_dl", ["3"] = "buoy_dr",
                o = "panel", ["["] = "winglet_l", ["]"] = "winglet_r",
                ["h"] = "pillar_l", ["j"] = "pillar_c", ["k"] = "pillar_r",
                ["n"] = "screw_u", ["m"] = "screw_d", ["-"] = "glitchledge",
                ["y"] = "brick_l", ["u"] = "brick_cr", ["i"] = "brick_broke"  }
local black = { o = "glitch", [">"] = "glitchd", s = "glitchsymbol", ["-"] = "glitchledge", ["^"] = "water_s"}

function start(is_wet)
if is_wet then
    ApplyTiles(metal, 0, 0, [[
o.......oooo.......o
o........79o.......o
o^o......46o.......o
ooo.....o46oooo..o.o
oww^^^--w13wwow^^o^o
owwwww^^wwwwwowwwowo
owwwww--owwowowooowo
owwwww^^owwowwwo79wo
owwwww--owwowwwo46wo
owwwww^^owwowwwo46wo
owwwww--owwooooo13wo
owwwww^^owwo79wwwwwo
owwwww--owwo46wwwwwo
owwwww^^owwo46wwwwwo
oooooooooooo13oooooo
]])
  Spawn("yield", 17, 13)
else
    ApplyTiles(metal, 0, 0, [[
o.......oooo.......o
o..........o.......o
o^o........o.......o
ooo.....o..oooo..o.o
o.....--....o...o.o
o............o...o.o
o.....--o79o.o.ooo.o
o.......o46o...o...o
o.....--o46o...o...o
o.......o13o...o...o
o.....--owwooooo79.o
o.......owwo....46.o
o.....--owwo....46.o
o.......owwo^^^^13^o
oooooooooooo79oooooo
]])
  Spawn("crystal", 13.5, 12.5)
end
  Spawn("player", 4, 13)
  Spawn("yield", 13.5, 2)
  Spawn("yield", 13.5, 9)
  Global("key", 2, 13.5)
  Global("chest", 6, 13.5, "start")
  Global("lock", 10, 4.5)
  Spawn("lock", 15.5, 12.5)
end

function reject()
  ApplyTiles(black, 0, 0, [[
o..................o
o..................o
o..................o
ooooo----ooooooooooo
ooooo......o.......o
oo>oo......o.......o
ooooo......o.......o
ooooo......ooooo...o
o..........o.......o
o..........o.......o
o...o....o.o.......o
o...o....o.....ooooo
o...o....o.....oosoo
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
if is_wet then
    ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
ooooo------ooooooooo
o..........oooooo>oo
o..........oo>oooooo
o..........ooooooooo
o..................o
o..................o
o..................o
o..........ooooo...o
o..........oosoo...o
o^^^^^^^^^^ooooo^^^o
oooooooooooooooooooo
]])
else
    ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
ooooo------ooooooooo
o..........oooooo>oo
o..........oo>oooooo
o..........ooooooooo
o..................o
o..................o
o..................o
o..........ooooo...o
o..........oosoo...o
o..........ooooo...o
oooooooooooooooooooo
]])
end
	Spawn("chest", 17.5, 13.5, "empty")
	Global("fan", 4.5, 13.5)
	Spawn("player", 7.5, 13)
	Global("chest", 13.5, 3.5, "loop")
end

function empty(is_wet)
if is_wet then
    ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
ooooooooo------ooooo
oosoooooo..........o
oooooosoo..........o
ooooooooo..........o
o..................o
o..................o
o..................o
o...ooooo..........o
o...oo>oo..........o
o^^^ooooo^^^^^^^^^^o
oooooooooooooooooooo
]])
else
    ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
ooooooooo------ooooo
oosoooooo..........o
oooooosoo..........o
ooooooooo..........o
o..................o
o..................o
o..................o
o...ooooo..........o
o...oo>oo..........o
o...ooooo..........o
oooooooooooooooooooo
]])
end
  Spawn("player", 12.5, 13)
end

tiles = "tiles/temple"
pattern = "backgrounds/library"
dark = {0, 0.05, 0.06}
light = {0, 0.14, 0.23}
