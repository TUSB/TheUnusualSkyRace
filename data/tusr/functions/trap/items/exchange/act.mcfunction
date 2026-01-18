#> tusr:trap/items/exchange/act

execute as @a[distance=0.1..,limit=1,sort=random,predicate=entity:player] run tag @s add Exchange
execute at @a[tag=Exchange] run summon marker ~ ~ ~ {Tags:[Exchange]}
execute as @e[type=marker,tag=Exchange] at @a[tag=Exchange] run tp @s ~ ~ ~ ~ ~
tp @a[tag=Exchange] ~ ~ ~ ~ ~
tp @s @e[type=marker,tag=Exchange,limit=1]
kill @e[type=marker,tag=Exchange]

tag @s add ExchangeCooldown
tag @a[tag=Exchange] add ExchangeCooldown
tag @a remove Exchange

schedule function tusr:trap/items/exchange/cooldown 10s
