#> tusr:gm/detector

execute as @a[scores={TUSR.GM=1..}] at @s run function tusr:gm/common

schedule function tusr:gm/detector 1t replace
