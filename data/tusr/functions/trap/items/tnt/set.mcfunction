#> tusr:trap/items/tnt/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2] at @s unless score @s TntCount matches 1.. run function tusr:trap/items/tnt/act",CustomName:'{"text":"Trap"}',auto:1b} replace
