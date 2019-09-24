
local castle = { o = "brick", n = "brick_u", u = "brick_d", ["["] = "brick_l", ["]"] = "brick_r",
                 x = "wall", ["="] = "trim", ["#"] = "bars",
                 [":"] = "chain_u", ["'"] = "chain_d", ["*"] = "pillar_u", ["|"] = "pillar_d" }

local glitch = { o = "glitch", ["/"] = "glitchd", s = "glitchsymbol", ["-"] = "glitchledge" }

function start()
  ApplyTiles(castle, 0, 0, [[
xxn...:....:......|.
xxu...:....:......|.
xxn...:....'......|.
xxu...:..........n[]
xxn...'..........uxx
xxu..............nxx
xxn..............uxx
xxu..............nxx
xxn======........uxx
xxuxxxxxn........nxx
[][][]xxu=====...uxx
xxxxxnxxxxxxxn...nxx
xxxxxuxxxxxxxu===uxx
xxxxx[][][][][][][][
xxxxxn....*...*....n
]])

  Spawn("player", 5.2, 7)
  Global("chest", 11.5, 9.5, "corridor")
end

function corridor()
  ApplyTiles(castle, 0, 0, [[
xxxxn...........nxxx
xxxxu...........uxxx
xxxxn...........nxxx
xxxxu...........uxxx
xxxxn...........nxxx
xxxxu...........uxxx
xxxxn.......[][][][]
xxxxu.......nxxxxxxx
[][][][][][]uxxxxxxx
xxxxxn.####.nxxxxxxx
xxxxxu.####.uxxxxxxx
xxxxxn.####.nxxxxxxx
xxxxxu.####.uxxxxxxx
xxx[][][][][][]xxxxx
xxxn..........nxxxxx
]])

  Spawn("player", 7.9, 7)
  Spawn("chest", 14, 5.5, "pocket")
end

function pocket()
  ApplyTiles(castle, 0, 0, [[
xxxxn........nxxxxxx
[][]u........uxxxxxx
.............nxxxxxx
.............uxxxxxx
.............nxxxxxx
][][]........uxxxxxx
xxxxn........nxxxxxx
xxxxu........uxxxxxx
xxxx[][][][][]xxxxxx
xxxxxn.####.nxxxxxxx
xxxxxu.####.uxxxxxxx
xxxxxn.####.nxxxxxxx
xxxxxu.####.uxxxxxxx
xxx[][][][][][]xxxxx
xxxn..........nxxxxx
]])

  Spawn("player", 7.9, 7)
  Spawn("crystal", 2.5, 3.5)
  Spawn("chest", -0.4, 4.5, "fanRoom")
end

function fanRoom()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oos............../oo
oos............../oo
oo/..............soo
oo/............../oo
oos............../oo
oos............../oo
ooo..............ooo
ooo..............ooo
oooooooooooooooooooo
oooooooosooooooooooo
ooosoooooooooooosooo
oooooooooosooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 10, 9)
  Spawn("fan", 17.6, 3.5)

end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oosoosooosoooosos///
/////////////////os/
/////////////////oso
/sossosssosossss/s/o
o/sos//ss//s/oss/o//
s/o//////////////ooo
s/o//////////////oso
o/s/ossoososososo//o
//s..............o//
oso..............sso
/oo..............so/
oso..............o/o
//sosososssoosoos//o
oss/////////////////
oss/////////////////
]])

  Spawn("player", 4, 11)
  Spawn("chest", -0.4, 3.5, "dia")
  Spawn("record", 7.9, 11.5, "sounds/voices/d6")
end

function dia()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
oooooooooooooooooooo
oooooooosooooooooooo
ooosoooooooooooosooo
oooooooooosooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 10, 9)
  Spawn("diamond", 10, 3.5)

end

tiles = "tiles/castle"
pattern = "backgrounds/tubes"
dark = { start = {0.06, 0.01, 0.09}, reject = {0.17, 0.06, 0.18} }
light = { start = {0.17, 0.06, 0.18}, reject = {0.34, 0.12, 0.36} }
