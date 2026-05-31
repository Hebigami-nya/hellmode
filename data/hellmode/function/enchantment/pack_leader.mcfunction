execute if score #random random matches 0..199 run say summoned a Wolf to defend themself

# Prepares the data storage
data modify storage hellmode:pack_leader owner set from entity @s UUID

# 20% Change to spawn a wolf tamed by the player
execute if score #random random matches 0..199 run function hellmode:enchantment/pack_leader_macro with storage hellmode:pack_leader