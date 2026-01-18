#> tusr:trap/items/firework_player/act

summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b}}},LifeTime:40,Passengers:[{id:"tnt",Fuse:40s,Tags:[Initialized]}]}
ride @s mount @e[type=minecraft:firework_rocket,limit=1]
