# Tagged Entity Bonus Loot
# Runs as the player who made the kill

# Revoke this advancement immediately so it fires again on the next tagged kill
advancement revoke @s only hellmode:kill_modified_entity

# Drop the bonus loot table at the player's location, scales chances with loot_balancing score
# Loot Table itself has a 20% chance of dropping the common drop and 2% of dropping the rare drop
execute if score @s loot_balancing matches 0..19 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 20..39 if score #random random matches 0..799 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 40..59 if score #random random matches 0..599 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 60..79 if score #random random matches 0..399 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 80..99 if score #random random matches 0..199 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus

# Increases the loot_balancing score whenever that player kills a modified monster
scoreboard players add @s[scores={loot_balancing=..100}] loot_balancing 15