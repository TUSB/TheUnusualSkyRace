#> tusr:death/act

scoreboard players remove @s TUSR.RacePoint 1

attribute @s generic.max_health modifier add 2025-12-25-20-07 "RaceHealthDown" -1 multiply
damage @s 0.00000000001

effect clear @s hunger
effect give @a minecraft:saturation 1 255 true

# 向き補正してあげる
tp @s ~ ~ ~ 180 0

effect give @s resistance 5 4 true
effect give @a[tag=Glowing] glowing infinite 0 true

advancement revoke @s only tusr:death
