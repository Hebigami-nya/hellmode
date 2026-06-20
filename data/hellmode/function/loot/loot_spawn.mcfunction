# Drop the bonus loot table at the player's location, scales chances with loot_balancing_short score
# Loot Table itself has a 20% chance of dropping the common drop and 2% of dropping the rare drop
execute if score @s loot_balancing_short matches 0..19 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing_short matches 20..39 if score #random random matches 0..799 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing_short matches 40..59 if score #random random matches 0..599 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing_short matches 60..79 if score #random random matches 0..399 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing_short matches 80..99 if score #random random matches 0..199 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
