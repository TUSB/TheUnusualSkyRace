#> tusr:trap/items/unique_floor_destroy_bomb/set

execute positioned ~-8 ~-8 ~-8 run kill @e[dx=16,dy=16,dz=16,tag=FloorDisplay]
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace command_block{CustomName:'{"text":"Trap"}'}
summon creeper ~ ~ ~ {Tags:[Explosion],ignited:true,ExplosionRadius:1b,Fuse:1s,CustomName:'{"text":"特殊床破壊爆弾"}'}
