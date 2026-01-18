#> tusr:gm/run/next_phase/act

tellraw @a [{"translate":"<%s>","with":[{"selector":"@s"}]}," ",{"translate":"フェーズをスキップします。"}]
scoreboard players set $World TUSR.Timer 2
