#> tusr:trap/items/dungeon_rock_spawner/set
execute align xyz positioned ~ ~-2 ~ run kill @e[tag=FloorDisplay,distance=..0.1]
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"armor_stand",Tags:[Spawn],DeathTime:19s,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Blow,DungeonRock,Main],Level:100}],[{Tags:[Global,Ground,Blow,DungeonRock,Display],Level:100}]]}}]}},SpawnCount:1s,RequiredPlayerRange:80s,SpawnRange:3s,MinSpawnDelay:120s,MaxSpawnDelay:540s,Delay:100s}
