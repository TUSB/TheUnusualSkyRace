#> tusr:trap/items/anmin_special/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2] run function tusr:trap/items/anmin_special/act",CustomName:'{"text":"Trap"}',auto:1b} replace
