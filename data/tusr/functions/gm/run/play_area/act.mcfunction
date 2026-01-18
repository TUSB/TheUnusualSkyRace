#> tusr:gm/run/play_area/act

execute if score @s TUSR.GM matches 300 run data modify storage tusr: area set value "flying_island"
execute if score @s TUSR.GM matches 300 run tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"プレイエリアを %s に変更しました。","with":[{"translate":"飛空島"}]}]


function #tusr:area/set
