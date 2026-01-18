#> tusr:show_rank

tellraw @a {"translate":"第 %1$s レースの結果発表！！","with":[{"score":{"name":"#","objective":"TUSR.RacePoint"}}]}
execute as @a[scores={TUSR.Rank=1}] run tellraw @a [{"translate":"第 %1$s 位：%2$s","with":[{"text":"1"},{"selector":"@s"}]}]
execute as @a[scores={TUSR.Rank=2}] run tellraw @a [{"translate":"第 %1$s 位：%2$s","with":[{"text":"2"},{"selector":"@s"}]}]
execute as @a[scores={TUSR.Rank=3}] run tellraw @a [{"translate":"第 %1$s 位：%2$s","with":[{"text":"3"},{"selector":"@s"}]}]
execute as @a[scores={TUSR.Rank=4}] run tellraw @a [{"translate":"第 %1$s 位：%2$s","with":[{"text":"4"},{"selector":"@s"}]}]
execute as @a[scores={TUSR.Rank=5}] run tellraw @a [{"translate":"第 %1$s 位：%2$s","with":[{"text":"5"},{"selector":"@s"}]}]
