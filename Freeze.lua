local sewer = { ["x"] = "panel", ["o"] = "box", ["|"] = "pillar", y = "pave",
                ["["] = "brick_l", ["]"] = "brick_r", ["#"] = "brick",
                ["-"] = "ledge", w = "water", ["^"] = "water_s", ["="] = "ledge_wet",
                ["7"] = "buoy_ul", ["8"] = "buoy_u", ["9"] = "buoy_ur",
                ["4"] = "buoy_l", ["5"] = "buoy_c", ["6"] = "buoy_r",
                ["1"] = "buoy_dl", ["2"] = "buoy_d", ["3"] = "buoy_dr"}

local water2 = { w = "water", ["^"] = "water_s", ["'"] = "ledge_wet",
                 ["4"] = "thinbuoy_l", ["5"] = "thinbuoy_c", ["6"] = "thinbuoy_r" }

function start(is_wet)
if is_wet then
    ApplyTiles(sewer, 0, 0, [[
[][][][][][][][][][]
oooooooooooooooooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
o=wooooo=====ooooooo
owwwwwwooowooowwwwwo
o=wwww79wwwww79wwwwo
owwwww46wwwww46wwwwo
o=wwww13=====13ooooo
owwwwwwwwwwwwwwwwwwo
owwwwwwwwwwwwwwwwwwo
owwoooooooooooooowwo
owwo[][][][][][]owwo
oooo[][][][][][]oooo
]])
else
    ApplyTiles(sewer, 0, 0, [[
[][][][][][][][][][]
oooooooooooooooooooo
o..................o
o..................o
o..................o
o-.ooooo-----ooooooo
o......ooo.ooo.....o
o-.................o
o..................o
o-....79-----79ooooo
o.....46.....46....o
o.....13.....13....o
owwoooooooooooooo..o
owwo[][][][][][]o..o
oooo[][][][][][]oooo
]])
end
  Spawn("player", 4.5, 11)
  Spawn("chest", 5.5, 4.5, "start")
  Global("key", 18, 13.5)
  Spawn("lock", 10.5, 7.5)
  Spawn("crystal", 17.5, 7.5)
end

tiles = "tiles/crucible"
pattern = "backgrounds/scuzz"
dark = {0.03, 0.05, 0.09}
light = {0.09, 0.13, 0.17}