#> tusr:time/trap_phase

data modify storage tusr: phase set value "trap"

scoreboard players add # TUSR.RacePoint 1

execute store result bossbar tusr:timer max run scoreboard players get $TrapPhase TUSR.Timer
bossbar set tusr:timer name [{"translate":"第 %1$s/10 ラウンド ","with":[{"score":{"name":"#","objective":"TUSR.RacePoint"}}]},{"translate":"トラップ準備フェーズ"}]
bossbar set tusr:timer color pink
bossbar set tusr:timer style notched_6
bossbar set tusr:timer players
bossbar set tusr:timer players @a

# スタート封印
execute in area:flying_island run fill -627 88 -680 -625 91 -680 gray_stained_glass

function tusr:title/trap_start

execute at 000007ea-0000-0001-0000-000e00000000 run tp @a ~ ~ ~ 180 0

data modify storage area: アドベンチャーエリア set value false
gamemode adventure @a[tag=!Spectator]
execute as @a[tag=!Spectator] run function area:entered/

# アイテム配布
clear @a[tag=!Spectator]
execute as @a[scores={TUSR.Rank=..0}] run loot give @s[tag=!Spectator] loot tusr:give
execute as @a[scores={TUSR.Rank=1..2}] run loot give @s[tag=!Spectator] loot tusr:give_poor
execute as @a[scores={TUSR.Rank=3..}] run loot give @s[tag=!Spectator] loot tusr:give
scoreboard players set @a TUSR.Give -1

execute at 000007ea-0000-0001-0000-000e00000000 run spawnpoint @a ~ ~ ~
