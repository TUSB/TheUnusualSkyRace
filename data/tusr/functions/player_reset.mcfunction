#> tusr:player_reset

# ボスバー表示
bossbar set tusr:timer players @a

# スコアリセット
scoreboard players set @s TUSR.RacePoint 20
scoreboard players set _ _ 5
scoreboard players operation _ _ *= # TUSR.RacePoint
scoreboard players operation @s TUSR.RacePoint += _ _
scoreboard players operation @s TUSR.Give = $World TUSR.Give
scoreboard players set @s TUSR.Rank 0

# 体力
attribute @s generic.max_health modifier add 2025-12-25-20-07 "RaceHealthDown" -100 multiply
damage @s 0.00000000001

clear @s[tag=!Spectator]

# スポーンポイント
execute at 000007ea-0000-0001-0000-000e00000000 run spawnpoint @s ~ ~ ~

scoreboard players enable @s TUSR.GM
