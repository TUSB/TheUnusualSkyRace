#> tusr:area/flying_island/marker_point/2

execute at 000007ea-0000-0001-0000-000e00000002 run forceload remove ~ ~
kill 000007ea-0000-0001-0000-000e00000002
execute in area:flying_island run summon marker -728 75 -776 {UUID:[I;2026,1,14,2],CustomName:'{"text":"鳥居 テレポートポイント"}'}
execute at 000007ea-0000-0001-0000-000e00000002 run forceload add ~ ~
