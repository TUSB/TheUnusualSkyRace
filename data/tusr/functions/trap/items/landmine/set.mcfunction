#> tusr:trap/items/landmine/set
# summon minecraft:item_display ~ ~-1.5 ~ {Tags:[Spawner,SpawnerHolder],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"lodestone",Count:1b,tag:{Spawner:{SpawnData:{entity:{id:"tnt"}},SpawnCount:4s,RequiredPlayerRange:5s,SpawnRange:4s,MinSpawnDelay:1s,MaxSpawnDelay:1s,Delay:60s},Experience:0,Count:1}}}
execute align xyz positioned ~ ~-2 ~ run kill @e[tag=FloorDisplay,distance=..0.1]
execute align xyz run setblock ~ ~-2 ~ air destroy
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"tnt"}},SpawnCount:4s,RequiredPlayerRange:5s,SpawnRange:4s,MinSpawnDelay:1s,MaxSpawnDelay:1s,Delay:60s}
