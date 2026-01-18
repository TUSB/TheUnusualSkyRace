#> tusr:time/race_phase

data modify storage tusr: phase set value "race"

execute store result bossbar tusr:timer max run scoreboard players get $RacePhase TUSR.Timer
bossbar set tusr:timer name [{"translate":"第 %1$s/10 ラウンド ","with":[{"score":{"name":"#","objective":"TUSR.RacePoint"}}]},{"translate":"レースフェーズ"}]
bossbar set tusr:timer color purple
bossbar set tusr:timer style notched_6
bossbar set tusr:timer players @a

# 解放
execute in area:flying_island run fill -627 88 -680 -625 91 -680 air destroy

# タイトル
function tusr:title/start

execute at 000007ea-0000-0001-0000-000e00000001 run tp @a ~ ~ ~ 180 0
execute at 000007ea-0000-0001-0000-000e00000001 run spawnpoint @a ~ ~ ~

# ゴール状態リセット
advancement revoke @a only tusr:goal

# 順位リセット
scoreboard players reset @a TUSR.Rank
scoreboard players set $World TUSR.Rank 0

data modify storage area: アドベンチャーエリア set value true
gamemode adventure @a[tag=!Spectator]
execute as @a[tag=!Spectator] run function area:entered/

clear @a[tag=!Spectator]

execute as @a run function skill:act/white_mage/clear/cure/level4
effect give @a[tag=Glowing] glowing infinite 0 true

tag @e[tag=Mob] add Garbage

kill @e[type=ender_pearl]

# トラップアイテムのクールダウンをリセット
function #tusr:reset_cooldown
