#> tusr:gm/run/phase_time/act

execute if score @s TUSR.GM matches 100 run scoreboard players remove $TrapPhase TUSR.Timer 20
execute if score @s TUSR.GM matches 101 run scoreboard players add $TrapPhase TUSR.Timer 20
execute if score @s TUSR.GM matches 100..101 if score $TrapPhase TUSR.Timer < $CountdownPhase TUSR.Timer run scoreboard players operation $TrapPhase TUSR.Timer = $CountdownPhase TUSR.Timer
execute if score @s TUSR.GM matches 100..101 store result storage tusr:gm PhaseTime.Trap int 0.5 run scoreboard players get $TrapPhase TUSR.Timer
execute if score @s TUSR.GM matches 100..101 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"トラップ準備フェーズを %1$s秒にしました。","with":[{"storage":"tusr:gm","nbt":"PhaseTime.Trap"}]}]

execute if score @s TUSR.GM matches 110 run scoreboard players remove $CountdownPhase TUSR.Timer 2
execute if score @s TUSR.GM matches 111 run scoreboard players add $CountdownPhase TUSR.Timer 2
execute if score @s TUSR.GM matches 110..111 if score $CountdownPhase TUSR.Timer matches ..0 run scoreboard players set $CountdownPhase TUSR.Timer 2
execute if score @s TUSR.GM matches 110..111 store result storage tusr:gm PhaseTime.Countdown int 0.5 run scoreboard players get $CountdownPhase TUSR.Timer
execute if score @s TUSR.GM matches 110..111 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"カウントダウンフェーズを %1$s秒にしました。","with":[{"storage":"tusr:gm","nbt":"PhaseTime.Countdown"}]}]

execute if score @s TUSR.GM matches 120 run scoreboard players remove $RacePhase TUSR.Timer 20
execute if score @s TUSR.GM matches 121 run scoreboard players add $RacePhase TUSR.Timer 20
execute if score @s TUSR.GM matches 120..121 if score $RacePhase TUSR.Timer matches ..19 run scoreboard players set $RacePhase TUSR.Timer 20
execute if score @s TUSR.GM matches 120..121 store result storage tusr:gm PhaseTime.Race int 0.5 run scoreboard players get $RacePhase TUSR.Timer
execute if score @s TUSR.GM matches 120..121 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"レースフェーズを %1$s秒にしました。","with":[{"storage":"tusr:gm","nbt":"PhaseTime.Race"}]}]

execute if score @s TUSR.GM matches 130 run scoreboard players remove $FinishPhase TUSR.Timer 2
execute if score @s TUSR.GM matches 131 run scoreboard players add $FinishPhase TUSR.Timer 2
execute if score @s TUSR.GM matches 130..131 if score $FinishPhase TUSR.Timer matches ..5 run scoreboard players set $FinishPhase TUSR.Timer 6
execute if score @s TUSR.GM matches 130..131 store result storage tusr:gm PhaseTime.Finish int 0.5 run scoreboard players get $FinishPhase TUSR.Timer
execute if score @s TUSR.GM matches 130..131 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"トラップ準備フェーズを %1$s秒にしました。","with":[{"storage":"tusr:gm","nbt":"PhaseTime.Finish"}]}]
