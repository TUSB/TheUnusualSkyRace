#> tusr:trap/put

function #tusr:area/trap_kill

data modify storage tusr: condition set from entity @e[type=allay,limit=1,sort=nearest] ArmorItems[-1].tag.TrapCondition

execute if data storage tusr:gm GlowingTrap{value:true} positioned as @e[type=allay,limit=1,sort=nearest] align xyz run summon minecraft:block_display ~ ~-2 ~ {Tags:[FloorDisplay],Glowing:true,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.9,0.9,0.9],translation:[0.05,1.05,0.05]},block_state:{Name:"glass"}}

execute positioned as @e[type=allay,limit=1,sort=nearest] run function #tusr:trap

tp @e[type=allay] ~ -255 ~
execute as @e[type=allay] at @s run tag @s add Garbage
advancement revoke @s only tusr:put_trap
