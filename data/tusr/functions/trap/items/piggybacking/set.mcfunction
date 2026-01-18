#> tusr:trap/items/piggybacking/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute if entity @a[dy=2] run function tusr:trap/items/piggybacking/act",CustomName:'{"text":"Trap"}',auto:1b} replace
