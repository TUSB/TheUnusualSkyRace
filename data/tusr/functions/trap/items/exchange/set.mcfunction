#> tusr:trap/items/exchange/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute as @a[dy=2,tag=!ExchangeCooldown] at @s run function tusr:trap/items/exchange/act",CustomName:'{"text":"Trap"}',auto:1b} replace
