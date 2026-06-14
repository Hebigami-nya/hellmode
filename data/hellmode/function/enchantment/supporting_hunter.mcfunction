# Applies Buffs to all surrounding players and wolfs
# Regeneration and Resistance
execute if score #20ticksLoop timer matches 10 run scoreboard players add @a[distance=..7] generic_regeneration 20
execute if score #20ticksLoop timer matches 10 run scoreboard players add @a[distance=..7] generic_resistance 20

execute at @s run effect give @e[type=wolf,distance=..7] minecraft:regeneration 6 0 false
execute at @s run effect give @e[type=wolf,distance=..7] minecraft:resistance 6 1 false