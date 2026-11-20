#> tusr:time/countdown_phase

data modify storage tusr: phase set value "countdown"

execute store result bossbar tusr:timer max run scoreboard players get $CountdownPhase TUSR.Timer
bossbar set tusr:timer name {"translate":"レース準備……"}
bossbar set tusr:timer color yellow
bossbar set tusr:timer style notched_10
bossbar set tusr:timer players
bossbar set tusr:timer players @a

# タイトル設定
title @a reset
title @a times 4 14 2
