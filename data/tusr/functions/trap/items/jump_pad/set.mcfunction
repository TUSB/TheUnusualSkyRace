#> tusr:trap/items/jump_pad/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/effect give @a[dy=2] jump_boost 1 4",CustomName:'{"text":"Trap"}',auto:1b} replace
