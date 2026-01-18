#> tusr:trap/items/teleport_sign/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2] at @s run function item:sign/click/teleport",CustomName:'{"text":"Trap"}',auto:1b} replace
