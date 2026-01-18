#> tusr:area/flying_island/fill/act

# スポーンエリア保護
execute at 000007ea-0000-0001-0000-000e00000000 run fill ~-1 ~ ~-1 ~1 ~2 ~1 air destroy
execute at 000007ea-0000-0001-0000-000e00000001 run fill ~-1 ~ ~-1 ~1 ~5 ~1 air destroy
execute in area:flying_island positioned -643 85 -705 run tag @e[tag=Mob,dx=35,dy=19,dz=47] add Garbage
execute in area:flying_island run setblock -728 74 -777 end_gateway{ExactTeleport: 1b, ExitPortal: {X: -728, Y: 74, Z: -777}, Age: 5012261L}
execute in area:flying_island run setblock -728 74 -776 end_gateway{ExactTeleport: 1b, ExitPortal: {X: -728, Y: 74, Z: -776}, Age: 5012261L}
execute in area:flying_island run setblock -728 74 -775 end_gateway{ExactTeleport: 1b, ExitPortal: {X: -728, Y: 74, Z: -775}, Age: 5012261L}
