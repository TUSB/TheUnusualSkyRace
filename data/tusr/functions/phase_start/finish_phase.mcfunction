#> tusr:time/finish_phase

data modify storage tusr: phase set value "finish"

execute store result bossbar tusr:timer max run scoreboard players get $FinishPhase TUSR.Timer
bossbar set tusr:timer name {"translate":"レース終了！次のターンに備えろ！"}
bossbar set tusr:timer color green
bossbar set tusr:timer style progress
bossbar set tusr:timer players @a

tag @a remove Glowing
function tusr:show_rank
tag @a[scores={TUSR.Rank=..3}] add Glowing

schedule clear tusr:goal/spectator

gamemode spectator @a[tag=!Spectator]
clear @a[tag=!Spectator]

tag @e[tag=Mob] add Garbage

scoreboard players add @a TUSR.Rank 0
scoreboard players operation @a[scores={TUSR.Give=-1}] TUSR.Give = $World TUSR.Give
