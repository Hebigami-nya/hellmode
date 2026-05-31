# Applies Buffs to all surrounding players and wolfs
# Regeneration and Resistance
execute if score #20ticksLoop timer matches 20 at @s run effect give @a[distance=..7] minecraft:regeneration 6 0 true
execute if score #20ticksLoop timer matches 20 at @s run effect give @a[distance=..7] minecraft:resistance 6 1 true
execute if score #20ticksLoop timer matches 20 at @s run effect give @e[type=wolf,distance=..7] minecraft:regeneration 6 0 false
execute if score #20ticksLoop timer matches 20 at @s run effect give @e[type=wolf,distance=..7] minecraft:resistance 6 1 false