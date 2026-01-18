#> tusr:trap/items/effect_clear/set

setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ command_block[facing=down]{Command:"/execute if entity @a[dy=2] run summon firework_rocket ~ ~2 ~ {LifeTime:20,FireworksItem:{id:\"firework_rocket\",Count:1,tag:{Fireworks:{Explosions:[{Type:3,Colors:[I;65470,65535,16711935,255,16776960,16711680,8323327]}]}}}}",CustomName:'{"text":"Trap"}',auto:1b} replace
