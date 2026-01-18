#> tusr:trap/items/lightning/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute if data block ~ ~ ~ {TrackOutput:true} as @a[dy=2,limit=1] at @s as @a[distance=1.5..,predicate=entity:player] at @s run function tusr:trap/items/lightning/act",CustomName:'{"text":"Trap"}',auto:1b} replace
