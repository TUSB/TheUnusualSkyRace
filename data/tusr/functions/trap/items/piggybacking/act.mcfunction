#> tusr:trap/items/piggybacking/act

tag @s add Target
scoreboard players set _ _ -2147483648
scoreboard players operation _ _ > @a[predicate=entity:player] TUSR.RacePoint
execute as @a at @s if score @s TUSR.RacePoint = _ _ positioned as @s run tp @a[tag=Target] ~ ~ ~
tag @s remove Target
effect give @s resistance 2 4 true
