#> tusr:trap/items/rotation_floor/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2] at @s run function tusr:trap/items/rotation_floor/act",CustomName:'{"text":"Trap"}',auto:1b} replace
