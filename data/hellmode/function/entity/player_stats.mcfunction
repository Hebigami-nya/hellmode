# Mobility Stats
execute as @s store result storage hellmode:stats jump_strength float 0.01 run attribute @s minecraft:jump_strength get 100
execute as @s store result storage hellmode:stats movement_speed float 0.01 run attribute @s minecraft:movement_speed get 100
execute as @s store result storage hellmode:stats safe_fall_distance float 0.01 run attribute @s minecraft:safe_fall_distance get 100
execute as @s store result storage hellmode:stats step_height float 0.01 run attribute @s minecraft:step_height get 100

# Offensive Stats
execute as @s store result storage hellmode:stats attack_damage float 0.01 run attribute @s minecraft:attack_damage get 100
execute as @s store result storage hellmode:stats attack_knockback float 0.01 run attribute @s minecraft:attack_knockback get 100
execute as @s store result storage hellmode:stats attack_speed float 0.01 run attribute @s minecraft:attack_speed get 100
execute as @s store result storage hellmode:stats entity_interaction_range float 0.01 run attribute @s minecraft:entity_interaction_range get 100

# Defense Stats
execute as @s store result storage hellmode:stats armor float 0.01 run attribute @s minecraft:armor get 100
execute as @s store result storage hellmode:stats armor_toughness float 0.01 run attribute @s minecraft:armor_toughness get 100
execute as @s store result storage hellmode:stats knockback_resistance float 0.01 run attribute @s minecraft:knockback_resistance get 100


execute as @s run function hellmode:entity/player_stats_macro with storage hellmode:stats

scoreboard players set @s used_lectern 0