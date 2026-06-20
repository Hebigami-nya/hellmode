# Tracks HP of all nearby modified non-boss non-altar mobs
execute at @a as @e[tag=modified,distance=..16,type=!end_crystal] store result score @s health run data get entity @s Health
execute at @a as @e[tag=modified,distance=..16,type=!end_crystal,scores={health=0}] run scoreboard players set @s health 1

# Tracks HP of all players
execute as @a store result score @s health run data get entity @s Health