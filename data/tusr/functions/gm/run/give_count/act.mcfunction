#> tusr:gm/run/give_count/act

execute if score @s TUSR.GM matches 10 run scoreboard players remove $World TUSR.Give 1
execute if score @s TUSR.GM matches 11 run scoreboard players add $World TUSR.Give 1
execute if score @s TUSR.GM matches 10..11 if score $World TUSR.Give matches ..-1 run scoreboard players set $World TUSR.Give 0
execute if score @s TUSR.GM matches 10..11 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"トラップアイテムの基本 配布個数を %s にしました。","with":[{"score":{"name":"$World","objective":"TUSR.Give"}}]}]
execute if score @s TUSR.GM matches 10..11 store result storage tusr:gm Give.Default int 1 run scoreboard players get $World TUSR.Give

execute if score @s TUSR.GM matches 20 run scoreboard players remove $1st TUSR.Give 1
execute if score @s TUSR.GM matches 21 run scoreboard players add $World TUSR.Give 1
execute if score @s TUSR.GM matches 20..21 if score $1st TUSR.Give matches ..-1 run scoreboard players set $1st TUSR.Give 0
execute if score @s TUSR.GM matches 20..21 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"トラップアイテムのラウンド1位 配布個数を %s にしました。","with":[{"score":{"name":"$1st","objective":"TUSR.Give"}}]}]
execute if score @s TUSR.GM matches 20..21 store result storage tusr:gm Give.First int 1 run scoreboard players get $1st TUSR.Give

execute if score @s TUSR.GM matches 30 run scoreboard players remove $2st TUSR.Give 1
execute if score @s TUSR.GM matches 31 run scoreboard players add $2st TUSR.Give 1
execute if score @s TUSR.GM matches 30..31 if score $2st TUSR.Give matches ..-1 run scoreboard players set $2st TUSR.Give 0
execute if score @s TUSR.GM matches 30..31 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"トラップアイテムのラウンド2位 配布個数を %s にしました。","with":[{"score":{"name":"$2st","objective":"TUSR.Give"}}]}]
execute if score @s TUSR.GM matches 30..31 store result storage tusr:gm Give.Second int 1 run scoreboard players get $2st TUSR.Give

execute if score @s TUSR.GM matches 40 run scoreboard players remove $3st TUSR.Give 1
execute if score @s TUSR.GM matches 41 run scoreboard players add $3st TUSR.Give 1
execute if score @s TUSR.GM matches 40..41 if score $3st TUSR.Give matches ..-1 run scoreboard players set $3st TUSR.Give 0
execute if score @s TUSR.GM matches 40..41 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"トラップアイテムのラウンド2位 配布個数を %s にしました。","with":[{"score":{"name":"$3st","objective":"TUSR.Give"}}]}]
execute if score @s TUSR.GM matches 40..41 store result storage tusr:gm Give.Third int 1 run scoreboard players get $3st TUSR.Give
