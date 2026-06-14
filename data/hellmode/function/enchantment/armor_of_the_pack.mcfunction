# Adds generic effect score based on the number of nearby wolfs (max 10)
# Keep in mind that tick enchantment functions do not run if set to #20ticksLoop timer matches 20

execute if score #20ticksLoop timer matches 10 as @s at @s at @e[type=wolf,distance=..10,limit=5] run scoreboard players add @s generic_speed 6
execute if score #20ticksLoop timer matches 10 as @s at @s at @e[type=wolf,distance=..10,limit=5] run scoreboard players add @s generic_strength 6
execute if score #20ticksLoop timer matches 10 as @s at @s at @e[type=wolf,distance=..10,limit=5] run scoreboard players add @s generic_resistance 3

