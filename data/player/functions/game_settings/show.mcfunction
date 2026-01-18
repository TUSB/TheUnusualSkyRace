
###プレイヤー設定表示

scoreboard players add @s TitleOffset 0
tellraw @s [{"translate":"[INFO] 確認や設定ができます。"}]
scoreboard players enable @s ChangeSettings

function player:game_settings/reshow

# 祈り表示
scoreboard players enable @s kill
tellraw @s [{"translate":"[最終手段]","bold":true,"color":"gray"}," ",{"translate":"祈りを捧げる","color":"dark_aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger kill set 1"},"hoverEvent":{"action":"show_text","contents":[{"translate":"/kill","color":"red"}]}}]
