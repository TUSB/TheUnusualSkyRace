#> tusr:time/finish_phase

execute if score $World TUSR.Timer = $FinishPhase TUSR.Timer run function tusr:phase_start/finish_phase

function tusr:time/common

scoreboard players remove $World TUSR.Timer 1
execute if score $World TUSR.Timer matches 1.. run schedule function tusr:time/finish_phase 10t replace
execute if score $World TUSR.Timer matches ..0 run schedule function tusr:time/trap_phase 10t replace
execute if score $World TUSR.Timer matches ..0 if score # TUSR.RacePoint matches 10 run function tusr:end
execute if score $World TUSR.Timer matches ..0 run scoreboard players operation $World TUSR.Timer = $TrapPhase TUSR.Timer

