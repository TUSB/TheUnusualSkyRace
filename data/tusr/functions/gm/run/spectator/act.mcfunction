#> tusr:gm/run/spectator/act

execute store success score _ _ if entity @s[tag=Spectator]
execute if score _ _ matches 0 run tag @s add Spectator
execute if score _ _ matches 0 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"観戦者になりました。","with":[{"storage":"tusr:gm","nbt":"GlowingTrap.text","interpret":true}]}]

execute if score _ _ matches 1 run tag @s remove Spectator
execute if score _ _ matches 1 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"プレイヤーになりました。","with":[{"storage":"tusr:gm","nbt":"GlowingTrap.text","interpret":true}]}]
