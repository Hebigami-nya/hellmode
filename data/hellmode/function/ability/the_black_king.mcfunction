# The Black King Ability
# Summons Lesser Black Knights
execute at @e[tag=black_king_goat] if score #random random matches 0..199 if entity @p[distance=..7] unless entity @e[tag=lesser_black_knight_goat,distance=..5] run summon goat ~ ~ ~ {id:"minecraft:goat",Health:30f,Tags:["modified","lesser_black_knight_goat"],Passengers:[{id:"minecraft:zombie",Health:20f,Tags:["modified","lesser_black_knight"],CustomName:"Lesser Black Knight",equipment:{feet:{id:"minecraft:netherite_boots",count:1},legs:{id:"minecraft:netherite_leggings",count:1},chest:{id:"minecraft:netherite_chestplate",count:1},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzEzNGMwN2YwZGI4MjdiNDc5YzY5ZWQxODBhZTBlMjRjMGNiM2Y0YTcxMDQ1YmNkYmEzZGJlNDMzZjg3MGRjIn19fQ=="}]},"minecraft:attribute_modifiers":[{id:"movement_speed",type:"movement_speed",amount:0.5,operation:"add_multiplied_base",slot:"hand"}]}},mainhand:{id:"minecraft:netherite_spear",count:1,components:{"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"hand"},{id:"movement_speed",type:"movement_speed",amount:0.5,operation:"add_multiplied_base",slot:"hand"}]}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:follow_range",base:128},{id:"minecraft:max_health",base:20},{id:"minecraft:air_drag_modifier",base:0},{id:"minecraft:attack_damage",base:5},{id:"minecraft:scale",base:0.3},{id:"minecraft:step_height",base:10},{id:"minecraft:safe_fall_distance",base:30}]}],equipment:{mainhand:{id:"minecraft:goat_horn",count:1,components:{"minecraft:attribute_modifiers":[{id:"movement_speed",type:"movement_speed",amount:2,operation:"add_multiplied_base"}]}}},drop_chances:{mainhand:0.000},attributes:[{id:"minecraft:air_drag_modifier",base:0},{id:"minecraft:scale",base:0.5},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:step_height",base:10},{id:"minecraft:max_health",base:30},{id:"minecraft:safe_fall_distance",base:30}]}

# Charging Core Ability
# Resets sprint_one_cm if the player is not sprinting
execute as @a unless predicate hellmode:is_sprinting run scoreboard players set @s sprint_one_cm 0

# Gives Buffs based on how far the player has sprinted
# Saturation 
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 2000.. run effect give @s minecraft:saturation 6 0

# Speed
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 1000.. run scoreboard players add @s generic_speed 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 2000.. run scoreboard players add @s generic_speed 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 3000.. run scoreboard players add @s generic_speed 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 4000.. run scoreboard players add @s generic_speed 29

# Strength
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 1000.. run scoreboard players add @s generic_strength 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 2000.. run scoreboard players add @s generic_strength 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 3000.. run scoreboard players add @s generic_strength 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 4000.. run scoreboard players add @s generic_strength 29

# Jump Boost
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 1000.. run scoreboard players add @s generic_jump_boost 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 2000.. run scoreboard players add @s generic_jump_boost 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 3000.. run scoreboard players add @s generic_jump_boost 29
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 4000.. run scoreboard players add @s generic_jump_boost 29

# Resistance
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 1000.. run scoreboard players add @s generic_resistance 20
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 2000.. run scoreboard players add @s generic_resistance 20
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 3000.. run scoreboard players add @s generic_resistance 20
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesSprintBuffs:1b}] if score @s sprint_one_cm matches 4000.. run scoreboard players add @s generic_resistance 20