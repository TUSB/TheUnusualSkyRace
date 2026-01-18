#> tusr:countdown_title

scoreboard players set _ Calc 2
scoreboard players operation _ TUSR.Timer = $World TUSR.Timer
scoreboard players operation # TUSR.Timer = $World TUSR.Timer
scoreboard players operation _ TUSR.Timer %= _ Calc
scoreboard players operation # TUSR.Timer /= _ Calc

execute if score _ TUSR.Timer matches 0 if score # TUSR.Timer matches 4.. run title @a title {"score":{"name":"#","objective":"TUSR.Timer"},"bold":true,"color":"gold"}
execute if score _ TUSR.Timer matches 0 if score # TUSR.Timer matches ..3 run title @a title {"score":{"name":"#","objective":"TUSR.Timer"},"bold":true,"color":"red"}
