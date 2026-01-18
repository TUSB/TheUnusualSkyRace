#> tusr:trap/items/restart/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/effect give @a[dy=2] speed 1 255 true",CustomName:'{"text":"Trap"}',auto:1b} replace
