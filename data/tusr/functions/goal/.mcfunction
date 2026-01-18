#> tusr:goal

execute store result score @s TUSR.Rank run scoreboard players add $World TUSR.Rank 1

function tusr:title/goal

execute if score @s TUSR.Rank matches 1 run scoreboard players add @s TUSR.RacePoint 15
execute if score @s TUSR.Rank matches 2 run scoreboard players add @s TUSR.RacePoint 12
execute if score @s TUSR.Rank matches 3.. run scoreboard players add @s TUSR.RacePoint 8
execute if score @s TUSR.Rank matches 4.. run scoreboard players add @s TUSR.RacePoint 5

execute if score @s TUSR.RacePoint matches ..0 run scoreboard players set @s TUSR.RacePoint 0

scoreboard players operation @s TUSR.Give = $World TUSR.Give
scoreboard players operation @s[scores={TUSR.Rank=1}] TUSR.Give = $1st TUSR.Give
scoreboard players operation @s[scores={TUSR.Rank=2}] TUSR.Give = $2st TUSR.Give
scoreboard players operation @s[scores={TUSR.Rank=3}] TUSR.Give = $3st TUSR.Give

schedule function tusr:goal/spectator 3s replace
