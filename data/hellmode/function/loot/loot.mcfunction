# Tagged Entity Bonus Loot
# Runs as the player who made the kill

# Revoke this advancement immediately so it fires again on the next tagged kill
advancement revoke @s only hellmode:kill_modified_entity

# Drop the bonus loot table at the player's location, scales chances with loot_balancing scores
# Loot Table itself has a 20% chance of dropping the common drop and 2% of dropping the rare drop
execute if score @s loot_balancing matches 0..99 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 100..199 if score #random random matches 0..799 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 200..299 if score #random random matches 0..599 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 300..399 if score #random random matches 0..399 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 400..499 if score #random random matches 0..199 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus
execute if score @s loot_balancing matches 500.. if score #random random matches 0..49 run loot spawn ~ ~ ~ loot hellmode:entity/modified_entity_bonus


# Increases the loot_balancing score whenever that player kills a modified monster
scoreboard players add @s[scores={loot_balancing=..600}] loot_balancing 60