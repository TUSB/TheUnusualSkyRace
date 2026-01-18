#> tusr:trap/items/firework_player/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute if data block ~ ~ ~ {TrackOutput:true} as @a[dy=2] at @s run function tusr:trap/items/firework_player/act",CustomName:'{"text":"Trap"}',auto:1b} replace
