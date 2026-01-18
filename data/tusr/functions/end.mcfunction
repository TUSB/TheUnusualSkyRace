#> tusr:end

# スケジュール解除
schedule clear tusr:time/trap_phase
schedule clear tusr:time/countdown_phase
schedule clear tusr:time/race_phase
schedule clear tusr:time/finish_phase

# ボスバー非表示
bossbar set tusr:timer visible false

tag @a add NoRank
execute in area:flying_island run tp @a -761.0 107.00 -781.0 90 -45
# 優勝者決定
scoreboard players set _ TUSR.Rank -2147483648
scoreboard players operation _ TUSR.Rank > @a TUSR.RacePoint
title @a reset
title @a times 20 100 30
execute as @a if score @s TUSR.RacePoint = _ TUSR.Rank run title @a title {"translate":"優勝 %1$s ","color":"yellow","bold":true,"underlined":true,"with":[{"selector":"@s"}]}
execute as @a if score @s TUSR.RacePoint = _ TUSR.Rank run tag @s add Rank1
execute as @a if score @s TUSR.RacePoint = _ TUSR.Rank run tag @s remove NoRank

# 2位
scoreboard players set _ TUSR.Rank -2147483648
scoreboard players operation _ TUSR.Rank > @a[tag=NoRank] TUSR.RacePoint
execute as @a if score @s TUSR.RacePoint = _ TUSR.Rank run tag @s add Rank2
execute as @a if score @s TUSR.RacePoint = _ TUSR.Rank run tag @s remove NoRank

# 3位
scoreboard players set _ TUSR.Rank -2147483648
scoreboard players operation _ TUSR.Rank > @a[tag=NoRank] TUSR.RacePoint
execute as @a if score @s TUSR.RacePoint = _ TUSR.Rank run tag @s add Rank3
tag @a remove NoRank

# 表彰台へ移動
execute in area:flying_island run tp @a[tag=Rank1] -765.0 112.00 -781.0 -90 45
execute in area:flying_island run tp @a[tag=Rank2] -765.0 111.00 -779.0 -90 45
execute in area:flying_island run tp @a[tag=Rank3] -765.0 110.00 -783.0 -90 45
tag @a remove Rank1
tag @a remove Rank2
tag @a remove Rank3

gamemode adventure @a[tag=!Spectator]

clear @a[tag=!Spectator]
give @a egg 64
give @a snowball 64
