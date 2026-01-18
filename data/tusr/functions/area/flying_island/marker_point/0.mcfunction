#> tusr:area/flying_island/marker_point/0

execute at 000007ea-0000-0001-0000-000e00000000 run forceload remove ~ ~
kill 000007ea-0000-0001-0000-000e00000000
execute in area:flying_island run summon marker -626 88 -686 {UUID:[I;2026,1,14,0],CustomName:'{"text":"トラップ準備フェーズ リスポーンポイント"}'}
execute at 000007ea-0000-0001-0000-000e00000000 run forceload add ~ ~
