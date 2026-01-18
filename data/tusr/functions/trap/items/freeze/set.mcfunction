#> tusr:trap/items/freeze/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute if data block ~ ~ ~ {TrackOutput:true} if data storage tusr: {phase:\"race\"} as @a[predicate=entity:player,distance=..5] at @s run function effects:freeze/apply0",CustomName:'{"text":"Trap"}',auto:1b} replace
