#> tusr:time/countdown_phase

execute if score $World TUSR.Timer = $CountdownPhase TUSR.Timer run function tusr:phase_start/countdown_phase

function tusr:time/common

function tusr:title/countdown

scoreboard players remove $World TUSR.Timer 1
execute if score $World TUSR.Timer matches 1.. run schedule function tusr:time/countdown_phase 10t replace
execute if score $World TUSR.Timer matches ..0 run schedule function tusr:time/race_phase 10t replace
execute if score $World TUSR.Timer matches ..0 run scoreboard players operation $World TUSR.Timer = $RacePhase TUSR.Timer
