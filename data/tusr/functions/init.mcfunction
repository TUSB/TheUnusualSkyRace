#> tusr:init

# タイマー用ボスバー
bossbar add tusr:timer {"translate":"トラップ準備フェーズ"}

# スコアボード
scoreboard objectives add TUSR.Timer dummy {"text":"TUSRタイマー 10tick単位"}
execute store result storage tusr:gm PhaseTime.Countdown int 0.5 run scoreboard players set $CountdownPhase TUSR.Timer 20
execute store result storage tusr:gm PhaseTime.Trap int 0.5 run scoreboard players set $TrapPhase TUSR.Timer 240
execute store result storage tusr:gm PhaseTime.Race int 0.5 run scoreboard players set $RacePhase TUSR.Timer 600
execute store result storage tusr:gm PhaseTime.Finish int 0.5 run scoreboard players set $FinishPhase TUSR.Timer 10
scoreboard players set $World TUSR.Timer -100

scoreboard objectives add TUSR.RacePoint dummy {"text":"レース得点"}
scoreboard objectives add TUSR.Rank dummy {"text":"レース順位"}
scoreboard objectives add TUSR.Give dummy {"text":"配布数"}
scoreboard objectives add TUSR.GM trigger {"text":"GM本制御用"}

scoreboard players set # TUSR.RacePoint 0
execute store result storage tusr:gm Give.Default int 1 run scoreboard players set $World TUSR.Give 5
execute store result storage tusr:gm Give.First int 1 run scoreboard players set $1st TUSR.Give 5
execute store result storage tusr:gm Give.Second int 1 run scoreboard players set $2st TUSR.Give 5
execute store result storage tusr:gm Give.Third int 1 run scoreboard players set $3st TUSR.Give 5

# execute at 000007ea-0000-0001-0000-000e00000000 run forceload remove ~ ~
# execute at 000007ea-0000-0001-0000-000e00000001 run forceload remove ~ ~
# execute at 000007ea-0000-0001-0000-000e00000002 run forceload remove ~ ~
# kill 000007ea-0000-0001-0000-000e00000000
# kill 000007ea-0000-0001-0000-000e00000001
# kill 000007ea-0000-0001-0000-000e00000002
# execute in area:control_area run summon marker 100 100 100 {UUID:[I;2026,1,14,0],CustomName:'{"text":"トラップ準備フェーズ リスポーンポイント"}'}
# execute in area:control_area run summon marker 100 100 100 {UUID:[I;2026,1,14,1],CustomName:'{"text":"レースフェーズ リスポーンポイント"}'}
# execute in area:control_area run summon marker 100 100 100 {UUID:[I;2026,1,14,2],CustomName:'{"text":"鳥居 テレポートポイント"}'}
# execute at 000007ea-0000-0001-0000-000e00000000 run forceload add ~ ~
# execute at 000007ea-0000-0001-0000-000e00000001 run forceload add ~ ~
# execute at 000007ea-0000-0001-0000-000e00000002 run forceload add ~ ~

# デフォルトエリア
data modify storage tusr: area set value "flying_island"
function #tusr:area/set

schedule function tusr:gm/detector 1t replace

data modify storage tusr:gm GlowingTrap set value {value:true,text:'{"translate":"[有効]","color":"red"}'}
