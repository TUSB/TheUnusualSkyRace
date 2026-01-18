#> tusr:trap/items/spawner_vase_spawner/set
execute align xyz positioned ~ ~-2 ~ run kill @e[tag=FloorDisplay,distance=..0.1]
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"armor_stand",Tags:[Spawn],DeathTime:19s,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Blow,SpawnerVase,Main,SpawnParticles],Level:100}]]}}]}},SpawnCount:1s,RequiredPlayerRange:16s,SpawnRange:4s,MinSpawnDelay:100s,MaxSpawnDelay:300s,Delay:100s}
