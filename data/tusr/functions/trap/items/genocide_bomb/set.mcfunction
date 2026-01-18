#> tusr:trap/items/genocide_bomb/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute if data block ~ ~ ~ {TrackOutput:true} run function tusr:trap/items/genocide_bomb/act",CustomName:'{"text":"Trap"}',auto:1b} replace
