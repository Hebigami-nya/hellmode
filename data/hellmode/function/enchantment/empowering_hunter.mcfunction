# Applies Buffs to all surrounding players and wolfs
# Strength and Speed
execute if score #20ticksLoop timer matches 10 run scoreboard players add @a[distance=..7] generic_strength 25
execute if score #20ticksLoop timer matches 10 run scoreboard players add @a[distance=..7] generic_speed 25

execute at @s run effect give @e[type=wolf,distance=..7] minecraft:strength 6 1 false
execute at @s run effect give @e[type=wolf,distance=..7] minecraft:speed 6 1 false