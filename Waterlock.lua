local villa = { o = "stone", t = "stonetop", ["|"] = "pillar", ["T"] = "pillartop",
				["7"] = "buoyul", ["8"] = "buoyu", ["9"] = "buoyur", w = "water",
                ["4"] = "buoyl", ["5"] = "buoyc", ["6"] = "buoyr", ["^"] = "watersurface",
                ["1"] = "buoydl", ["2"] = "buoyd", ["3"] = "buoydr",
                [">"] = "shadowtop_l", ["}"] = "shadow_l", ["<"] = "shadowtop_r",
                ["x"] = "ivy_a", ["X"] = "ivy_b", ["+"] = "ivy_c", ["{"] = "shadow_r",
                ["$"] = "hang_a", ["%"] = "hang_b", ["&"] = "hang_c",
                ["#"] = "bush_a", ["@"] = "bush_a", ["/"] = "grasspillar",
                [","] = "grass_a", [":"] = "grass_b", [";"] = "grass_c", ["-"] = "ledge" }

local glitch = { o = "glitch", ["/"] = "glitchd", s = "glitchsymbol", ["-"] = "glitchledge", a = "acid" }

function start(is_wet)
if is_wet then
    ApplyTiles(villa, 0, 0, [[
T......ooooooooooooo
|......o.....o..789|
|......ooooooo..456|
|...............456|
|...............456|
|......o.....o..456|
|......o^^^^^o..456|
|.oooooooowooooo456|
|...o.....-.789o456|
|...o.......456o456|
|-..o..o....456o123|
|......ooooo456wwww|
|......o...o456wwww|
oooooooo...o456wwww|
...........o456ooooo
]])
  Spawn("crystal", 17.5, 12.5)
else
    ApplyTiles(villa, 0, 0, [[
T......ooooooooooooo
|......o.....o.....|
|......ooooooo.....|
|..................|
|...............789|
|......o.....o..456|
|......o.....o..456|
|.oooooooo^ooooo456|
|...o.....-....o456|
|...o..........o456|
|-..o..o.......o456|
|......ooooo....456|
|......o...o....456|
oooooooo...o....123|
...........o789ooooo
]])
end
  Spawn("player", 5.5, 6)
  Spawn("key", 17.5, 3.5)
  Global("lock", 10.5, 9.5)
  Global("chest", 3.5, 6.5, "start")
end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooo......o/......ooo
ooo......o.......ooo
ooo......o.......ooo
osoooo...o.......ooo
oooooo...ooooo---ooo
oooo/............ooo
oooo.............ooo
oooo..........oooooo
ooso.............ooo
oooo.............oso
ooooooaaaooooo...ooo
osoooooooooooooooooo
oooooooooooooooooooo
]])
  
  Spawn("player", 11.5, 11)
  Global("lock", 13.5, 10.5)
  Global("generic", 15.5, 12.5)
  Spawn("chest", 12, 5.5, "nailbiter")
  Spawn("chest", 4.5, 4.5, "nailbiter")
end

function nailbiter(iswet)
if iswet then
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
o.............oo...o
o.............oo...o
o.............oo...o
o.............oo...o
o---------oooooo...o
o..................o
o..................o
o..................o
o-------------oooooo
o.............oooooo
o.............ooaooo
o.............oooooo
oaaaaaaaaaaaaaooooao
ooooooo-------oooooo
]])
else
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
o.............oo...o
o.............oo...o
o.............oo...o
o.............oo...o
o---------oooooo...o
o..................o
o..................o
o..................o
o-------------oooooo
o.............oooooo
o.............oo.ooo
o.............oooooo
o.............oooo.o
ooooooo-------oooooo
]])
end

  Spawn("player", 2.5, 13)
  Global("chest", 12, 4.5, "nailbiter")
  Spawn("box", 6.5, 13.5)
  Global("fan", 4.5, 13.5)
  Spawn("lock", 14.5, 7.5)
  Spawn("diamond", 17.5, 2.5)
end

tiles = "tiles/villa"
pattern = "backgrounds/growth"
dark = { start = {0.16, 0.11, 0.10}, reject = {0.34, 0.21, 0.16} }
light = { start = {0.34, 0.21, 0.16}, reject = {0.5, 0.32, 0.26} }
