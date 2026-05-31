# Applies Buffs to all surrounding players and wolfs
# Strength and Speed
execute if score #20ticksLoop timer matches 20 at @s run effect give @a[distance=..7] minecraft:strength 6 1 true
execute if score #20ticksLoop timer matches 20 at @s run effect give @a[distance=..7] minecraft:speed 6 1 true
execute if score #20ticksLoop timer matches 20 at @s run effect give @e[type=wolf,distance=..7] minecraft:strength 6 1 false
execute if score #20ticksLoop timer matches 20 at @s run effect give @e[type=wolf,distance=..7] minecraft:speed 6 1 false