#> tusr:trap/items/effect_clear/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2] at @s run function skill:act/white_mage/clear/cure/level4",CustomName:'{"text":"Trap"}',auto:1b} replace
