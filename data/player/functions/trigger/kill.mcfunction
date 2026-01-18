# player:trigger/kill
# scoreboard players set @s MP 0
# execute in area:skylands run spawnpoint @s -75 14 -619
execute if data storage tusr: {phase:"race"} at 000007ea-0000-0001-0000-000e00000000 run spawnpoint @a ~ ~ ~
execute unless data storage tusr: {phase:"race"} at 000007ea-0000-0001-0000-000e00000001 run spawnpoint @a ~ ~ ~
data modify storage score_damage: Argument set value {Damage:99999,DamageType:["None"],BypassArmor:true,BypassResistance:true,DisableParticle:true,DeathCause:'[{"translate":"%1$sは祈りを捧げた。","with":[{"selector":"@s"}]}]'}
function score_damage:api/attack
scoreboard players enable @s kill
scoreboard players set @s kill 0
