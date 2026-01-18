#> tusr:trap/items/poison_floor_trap_spawner/set
execute align xyz positioned ~ ~-2 ~ run kill @e[tag=FloorDisplay,distance=..0.1]
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"armor_stand",Tags:[Spawn],DeathTime:19s,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Blow,PoisonFloorTrap,Scatter],Level:1}]]}}]}},SpawnCount:8s,RequiredPlayerRange:16s,SpawnRange:4s,MinSpawnDelay:100s,MaxSpawnDelay:200s,Delay:100s}
