# Tagged Entity Bonus Loot
# Runs as the player who made the kill

# Revoke this advancement immediately so it fires again on the next tagged kill
advancement revoke @s only hellmode:kill_modified_entity

# Drop the bonus loot table at the player's location, scales chances with loot_balancing scores
# Loot Table itself has a 20% chance of dropping the common drop and 2% of dropping the rare drop
execute if score @s loot_balancing_long matches 0..199 run function hellmode:loot/loot_spawn
execute if score @s loot_balancing_long matches 200..399 if score #random random matches 0..799 run function hellmode:loot/loot_spawn
execute if score @s loot_balancing_long matches 400..599 if score #random random matches 0..599 run function hellmode:loot/loot_spawn
execute if score @s loot_balancing_long matches 600..799 if score #random random matches 0..399 run function hellmode:loot/loot_spawn
execute if score @s loot_balancing_long matches 800.. if score #random random matches 0..199 run function hellmode:loot/loot_spawn


# Increases the loot_balancing_short score whenever that player kills a modified monster
scoreboard players add @s[scores={loot_balancing_short=..100}] loot_balancing_short 10
scoreboard players add @s[scores={loot_balancing_long=..1000}] loot_balancing_long 60