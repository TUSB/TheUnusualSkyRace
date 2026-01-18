#> tusr:time/race_phase

execute if score $World TUSR.Timer = $RacePhase TUSR.Timer run function tusr:phase_start/race_phase

function tusr:time/common

execute store success score _ _ if entity @a[tag=!Spectator,advancements={tusr:goal=false}]
execute if score _ _ matches 0 run scoreboard players set $World TUSR.Timer 1

# 鳥居テレポート
execute at 000007ea-0000-0001-0000-000e00000002 as @a[predicate=entity:player,distance=..15] at @s if block ~ ~ ~ end_gateway in area:flying_island run tp -777 95 -773

scoreboard players remove $World TUSR.Timer 1
execute if score $World TUSR.Timer matches 1.. run schedule function tusr:time/race_phase 10t replace
execute if score $World TUSR.Timer matches ..0 run schedule function tusr:time/finish_phase 10t replace
execute if score $World TUSR.Timer matches ..0 run scoreboard players operation $World TUSR.Timer = $FinishPhase TUSR.Timer
