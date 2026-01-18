#> tusr:trap/items/confuse/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2] unless score @s ConfuseCount matches 1.. at @s run function tusr:trap/items/confuse/act",CustomName:'{"text":"Trap"}',auto:1b} replace
