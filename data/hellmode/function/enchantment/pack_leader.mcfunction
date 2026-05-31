# Adds limit how many wolfs can be nearby 
scoreboard players set @a wolf_count 0
execute at @e[type=wolf] run scoreboard players add @a[distance=..30] wolf_count 1

execute if score #random random matches 0..199 if score @s wolf_count matches 0..4 run say summoned a Wolf to defend themself

# Prepares the data storage
data modify storage hellmode:pack_leader owner set from entity @s UUID

# 20% Change to spawn a wolf tamed by the player
execute if score #random random matches 0..199 if score @s wolf_count matches 0..4 run function hellmode:enchantment/pack_leader_macro with storage hellmode:pack_leader