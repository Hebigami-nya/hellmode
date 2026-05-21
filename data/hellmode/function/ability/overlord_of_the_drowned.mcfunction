# Overlord of the Drowned Ability
# teleports the Boss to a trident near a player
tag @e[type=trident] remove trident_near_player
execute at @a run tag @e[type=trident,distance=..4] add trident_near_player
execute as @e[tag=overlord_of_the_drowned] run teleport @s @e[tag=trident_near_player,limit=1]

# Overlord of the Drowned Drop Ability
execute as @a if predicate hellmode:is_swimming if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesWaterBuffs:1b}] run effect give @s minecraft:dolphins_grace 5 0
execute as @a if predicate hellmode:is_swimming if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesWaterBuffs:1b}] run effect give @s minecraft:conduit_power 5 0
execute as @a if predicate hellmode:is_swimming if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesWaterBuffs:1b}] run effect give @s minecraft:regeneration 5 3
