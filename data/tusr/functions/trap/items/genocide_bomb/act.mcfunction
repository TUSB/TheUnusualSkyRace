#> tusr:trap/items/genocide_bomb/act

execute at @a[predicate=entity:player] run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown],Level:100}]]}}]}
tag @s add GenocideCooldown
schedule function tusr:trap/items/genocide_bomb/cooldown 60s replace
