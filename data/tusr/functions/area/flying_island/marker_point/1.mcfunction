#> tusr:area/flying_island/marker_point/0

execute at 000007ea-0000-0001-0000-000e00000001 run forceload remove ~ ~
kill 000007ea-0000-0001-0000-000e00000001
execute in area:flying_island run summon marker -626 88 -672 {UUID:[I;2026,1,14,1],CustomName:'{"text":"レースフェーズ リスポーンポイント"}'}
execute at 000007ea-0000-0001-0000-000e00000001 run forceload add ~ ~
