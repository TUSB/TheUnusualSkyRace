#> tusr:trap/items/common_bomb_spawner/set
execute align xyz positioned ~ ~-2 ~ run kill @e[tag=FloorDisplay,distance=..0.1]
execute align xyz run setblock ~ ~-2 ~ air destroy
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"armor_stand",Tags:[Spawn],DeathTime:19s,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBomb,Main],Level:1}]]}}]}},SpawnCount:1s,RequiredPlayerRange:80s,SpawnRange:3s,MinSpawnDelay:120s,MaxSpawnDelay:120s,Delay:100s}
