local villa = { o = "stone", t = "stonetop", ["8"] = "stucco",
                ["7"] = "arch_l", ["9"] = "arch_r", ["1"] = "stonebottom_l", ["3"] = "stonebottom_r",
                ["|"] = "pillar",  ["T"] = "pillartop", ["/"] = "grasspillar",
                [">"] = "shadowtop_l", ["}"] = "shadow_l", ["<"] = "shadowtop_r", ["{"] = "shadow_r",
                ["x"] = "ivy_a", ["X"] = "ivy_b", ["+"] = "ivy_c",
                ["$"] = "hang_a", ["%"] = "hang_b", ["&"] = "hang_c",
                ["#"] = "bush_a", ["@"] = "bush_a",
                [","] = "grass_a", [":"] = "grass_b", [";"] = "grass_c", ["-"] = "ledge" }

local glitch = { o = "glitch", ["/"] = "glitchd", s = "glitchsymbol", ["-"] = "glitchledge", a = "acid" }

function start()
  ApplyTiles(villa, 0, 0, [[
|.................x/
|................../
ttt................/
oo.................|
oo...............ttt
oo;:.............ooo
ooox.............ooo
ooXX.........:,;.ooo
ooxx.........#@%tt>o
oooX;:,......@$xXo}o
$%&%&%@......#@%@%}o
xXXXxX#..........#}o
x+x+Xx&..........&}o
xXXXxX#.......:,;#}o
x+x+Xx&------$X+Xxtt
]])

  Spawn("player", 5, 9)
  Global("chest", 6, 9.5, "start")
  Global("key", 2, 1.5)
  Spawn("lock", 13.5, 12.5)
  Spawn("crystal", 15.5, 12.5)
  
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
oooo...........ooooo
ooso...........ooooo
oooo...........ososo
oooooooooooooooooooo
oooooooooooooooosooo
oooooooooooooooooooo
]])
  
  Spawn("player", 6.5, 11)
  Spawn("chest", 12, 5.5, "nailbiter")
  Spawn("chest", 4.5, 4.5, "nailbiter")
end

function nailbiter(iswet)
if iswet then
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
o/............oo/..o
o.............oo...o
o.............oo...o
o.............oo...o
o---------oooooo...o
o..................o
o..................o
o..................o
o-------------oooooo
o.............oooooo
o.............oosooo
o.............oooooo
o.............ooooso
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
o.............oosooo
o.............oooooo
o.............ooooso
ooooooo-------oooooo
]])
end

  Spawn("player", 2.5, 13)
  Global("chest", 12, 4.5, "nailbiter")
  Spawn("box", 6.5, 13.5)
  Global("fan", 4.5, 13.5)
  Spawn("lock", 15, 7.5)
  Spawn("diamond", 17.5, 2.5)
end

tiles = "tiles/villa"
pattern = "backgrounds/growth"
dark = { start = {0.16, 0.11, 0.10}, reject = {0.34, 0.21, 0.16} }
light = { start = {0.34, 0.21, 0.16}, reject = {0.5, 0.32, 0.26} }
