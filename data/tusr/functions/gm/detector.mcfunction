#> tusr:gm/detector

execute as @a[scores={TUSR.GM=1..}] at @s run function tusr:gm/common

loot give @a[gamemode=creative,tag=!GivenGM] loot tusr:gm_book
tag @a[gamemode=creative] add GivenGM
tag @a[gamemode=!creative] remove GivenGM

schedule function tusr:gm/detector 1t replace
