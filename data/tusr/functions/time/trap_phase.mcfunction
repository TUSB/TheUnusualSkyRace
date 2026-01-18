#> tusr:time/trap_phase

execute if score $World TUSR.Timer = $TrapPhase TUSR.Timer run function tusr:phase_start/trap_phase

function tusr:time/common

execute as @a run attribute @s generic.max_health modifier add 2025-12-25-20-07 "RaceHealthDown" -100 multiply

scoreboard players remove $World TUSR.Timer 1
execute if score $World TUSR.Timer > $CountdownPhase TUSR.Timer run schedule function tusr:time/trap_phase 10t replace
execute if score $World TUSR.Timer <= $CountdownPhase TUSR.Timer run schedule function tusr:time/countdown_phase 10t replace
execute if score $World TUSR.Timer <= $CountdownPhase TUSR.Timer run scoreboard players operation $World TUSR.Timer = $CountdownPhase TUSR.Timer
