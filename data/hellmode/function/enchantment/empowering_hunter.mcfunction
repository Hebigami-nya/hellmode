# Applies Buffs to all surrounding players and wolfs
# Strength and Speed
execute at @s run effect give @a[distance=..7] minecraft:strength 6 1 true
execute at @s run effect give @a[distance=..7] minecraft:speed 6 1 true
execute at @s run effect give @e[type=wolf,distance=..7] minecraft:strength 6 1 false
execute at @s run effect give @e[type=wolf,distance=..7] minecraft:speed 6 1 false