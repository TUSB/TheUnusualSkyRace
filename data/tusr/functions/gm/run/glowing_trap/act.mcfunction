#> tusr:gm/run/glowing_trap/act

execute if data storage tusr:gm GlowingTrap{value:true} run data modify storage tusr:temp Toggle set value {value:false,text:'{"translate":"[無効]","color":"blue"}'}
execute if data storage tusr:gm GlowingTrap{value:false} run data modify storage tusr:temp Toggle set value {value:true,text:'{"translate":"[有効]","color":"red"}'}
data modify storage tusr:gm GlowingTrap set from storage tusr:temp Toggle
tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"設置したトラップが光る機能を %s にしました。","with":[{"storage":"tusr:gm","nbt":"GlowingTrap.text","interpret":true}]}]
