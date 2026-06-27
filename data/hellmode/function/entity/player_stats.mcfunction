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

# Tells the player their current drop rates
execute as @s if score @s loot_balancing matches 0..99 run tellraw @s ["Drop Rate Soul Tears: ",{"color":"dark_green","text":"20%"},{"text":"\nDrop Rate Shard of Broken Souls: "},{"color":"dark_green","text":"2%\n\n"}]
execute as @s if score @s loot_balancing matches 100..199 run tellraw @s ["Drop Rate Soul Tears: ",{"color":"green","text":"16%"},{"text":"\nDrop Rate Shard of Broken Souls: "},{"color":"green","text":"1.6%\n\n"}]
execute as @s if score @s loot_balancing matches 200..299 run tellraw @s ["Drop Rate Soul Tears: ",{"color":"yellow","text":"12%"},{"text":"\nDrop Rate Shard of Broken Souls: "},{"color":"yellow","text":"1.2%\n\n"}]
execute as @s if score @s loot_balancing matches 300..399 run tellraw @s ["Drop Rate Soul Tears: ",{"color":"yellow","text":"8%"},{"text":"\nDrop Rate Shard of Broken Souls: "},{"color":"yellow","text":"0.8%\n\n"}]
execute as @s if score @s loot_balancing matches 400..499 run tellraw @s ["Drop Rate Soul Tears: ",{"color":"red","text":"4%"},{"text":"\nDrop Rate Shard of Broken Souls: "},{"color":"red","text":"0.4%\n\n"}]
execute as @s if score @s loot_balancing matches 500.. run tellraw @s ["Drop Rate Soul Tears: ",{"color":"dark_red","text":"1%"},{"text":"\nDrop Rate Shard of Broken Souls: "},{"color":"dark_red","text":"0.1%\n\n"}]

execute as @s run function hellmode:entity/player_stats_macro with storage hellmode:stats

scoreboard players set @s used_lectern 0