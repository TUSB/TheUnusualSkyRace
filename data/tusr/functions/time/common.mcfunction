#> tusr:time/common

# スポーンエリア保護
function #tusr:area/fill

effect clear @a absorption
effect clear @a health_boost
execute as @a run attribute @s generic.max_health modifier add 2025-12-25-20-07 "RaceHealthDown" -100 multiply
execute as @a if score @s Health matches 2.. run damage @s 0.00000000001

execute store result bossbar tusr:timer value run scoreboard players get $World TUSR.Timer
