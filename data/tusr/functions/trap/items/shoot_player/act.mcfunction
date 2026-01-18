#> tusr:trap/items/shoot_player/act

summon snowball ~ ~ ~ {Tags:["ShootPlayer"]}
execute as @e[tag=ShootPlayer,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 rotated ~ -60 positioned ^ ^ ^2.25 run function calc:throw_projectile/
ride @s mount @e[tag=ShootPlayer,distance=..3,limit=1]
