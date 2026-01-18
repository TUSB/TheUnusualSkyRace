#> tusr:reset

# 難易度
function main:difficulty/select/picnic

# スポーンポイント
execute at 000007ea-0000-0001-0000-000e00000000 run spawnpoint @a ~ ~ ~

# gamerule
gamerule fallDamage false
gamerule doImmediateRespawn true

# スコアリセット
scoreboard objectives setdisplay sidebar TUSR.RacePoint
scoreboard players set # TUSR.RacePoint 0

execute as @a at @s run function tusr:player_reset

# ループスタート
schedule clear tusr:time/countdown_phase
schedule clear tusr:time/finish_phase
schedule clear tusr:time/race_phase
schedule clear tusr:time/trap_phase

bossbar set tusr:timer visible true

scoreboard players set $World TUSR.Timer 1
function tusr:time/finish_phase

time set day
gamerule doDaylightCycle true

# 観戦者設定
scoreboard players reset @a[tag=Spectator] TUSR.RacePoint
gamemode spectator @a[tag=Spectator]
