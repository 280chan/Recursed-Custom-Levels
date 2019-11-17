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
if is_wet then
    ApplyTiles(metal, 0, 0, [[
o........ooo.......o
owo......79o.......o
ooo......46o.......o
owwwwww-o46oooo..o.o
owwwwwwww13wwowwwowo
oo-wwwwwwwwwwowwwowo
owwwwwwoowwowowooowo
owwwwwww79wowwwo79wo
ooowwwww46wowwwo46wo
owwwwwww46wowwwo46wo
owwwwwwo13wooooo13wo
owwwwwwwwwwo79wwwwwo
owwwwowwwwwo46wwwwwo
owwwwo-----o46wwwwwo
oooooooooooo13oooooo
]])
  Spawn("yield", 17, 13)
else
    ApplyTiles(metal, 0, 0, [[
o........ooo.......o
owo........o.......o
ooo........o.......o
o......-o..oooo..o.o
o............o...o.o
oo-..........o...o.o
o......oo79o.o.ooo.o
o........46o...o...o
ooo......46o...o...o
o........13o...o...o
o......o79.ooooo79.o
o.......46.o....46.o
o....oww46wo....46.o
o....o--13-owwww13wo
oooooooooooo79oooooo
]])
  Spawn("crystal", 13.5, 12.5)
end
  Spawn("player", 4, 13)
  Spawn("yield", 13.5, 2)
  Spawn("yield", 13.5, 9)
  Global("key", 3, 13.5)
  Global("chest", 2, 13.5, "start")
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