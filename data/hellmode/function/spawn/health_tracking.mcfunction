# Tracks HP of all nearby modified non-boss non-altar mobs
execute at @a as @e[tag=modified,tag=!boss,distance=..16,type=!end_crystal] store result score @s health run data get entity @s Health

# Tracks HP of all nearby bosses at greater range
execute at @a as @e[tag=boss,distance=..64] store result score @s health run data get entity @s Health

# Tracks HP of all players
execute as @a store result score @s health run data get entity @s Health