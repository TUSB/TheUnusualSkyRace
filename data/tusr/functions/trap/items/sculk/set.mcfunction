#> tusr:trap/items/sculk/set
execute align xyz positioned ~ ~-2 ~ run kill @e[tag=FloorDisplay,distance=..0.1]
setblock ~ ~ ~ sculk_shrieker[can_summon=true]
