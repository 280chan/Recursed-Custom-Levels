
local castle = { o = "brick", n = "brick_u", u = "brick_d", ["["] = "brick_l", ["]"] = "brick_r",
                 x = "wall", ["="] = "trim", ["#"] = "bars",
                 [":"] = "chain_u", ["'"] = "chain_d", ["*"] = "pillar_u", ["|"] = "pillar_d" }

local glitch = { o = "glitch", ["/"] = "glitchd", s = "glitchsymbol", ["-"] = "glitchledge" }

function start()
  ApplyTiles(castle, 0, 0, [[
xxn...:....:......|.
xxu...:....:......|.
xxn...:....'......|.
xxu...:...........|.
xxn...'........[][][
xxu..............nxx
xxn..............uxx
xxu..............nxx
xxn========......uxx
xxuxxxxxxxn......nxx
[][][]xxxxu===...uxx
xxxxxnxxxxxxxn...nxx
xxxxxuxxxxxxxu===uxx
xxxxx[][][][][][][][
xxxxxn....*...*....n
]])

  Spawn("player", 5.2, 7)
  Global("box", 7.5, 7.5)
  Global("chest", 17.5, 3.5, "corridor")
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
.............nxxxxxx
.............uxxxxxx
.............nxxxxxx
[][]n........uxxxxxx
xxxxu........nxxxxxx
xxxxn........u[][]xx
xxxxu............nxx
xxxxn............uxx
xxxxu............nxx
xxxx[][][][][]...uxx
xxxxuu.####.uu...nxx
xxxxnn.####.nn...uxx
xxxxuu.####.uu[][]xx
xxx[][][][][][]xxxxx
xxxn..........nxxxxx
]])

  Spawn("player", 7.9, 8)
  Spawn("crystal", 2.5, 1.5)
  Spawn("chest", -0.4, 2.5, "dia")
  Spawn("box", 15.5, 11.5)
end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooosooooo
oooosooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
ooo/.............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
oooooooooooooooooooo
ooooooooosoooooooooo
ooooooooooooooooosoo
ooosoooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 4, 9)
  Spawn("record", 7.9, 9.5, "sounds/voices/d6")
end

function dia()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
ooo..............ooo
ooo..............ooo
ooo..............ooo
ooo..ooooooooooooooo
ooo..o........o..ooo
ooo..o.ooooo..o..ooo
ooo..o.o......o.oooo
ooo--o.o.........ooo
ooo--o.o.........ooo
ooo....o.........ooo
ooo....o.........ooo
oooooooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 10, 12)
  Spawn("diamond", 15.5, 3.5)
  Global("fan", 16.6, 7.5)

end

tiles = "tiles/castle"
pattern = "backgrounds/tubes"
dark = { start = {0.06, 0.01, 0.09}, reject = {0.17, 0.06, 0.18} }
light = { start = {0.17, 0.06, 0.18}, reject = {0.34, 0.12, 0.36} }
