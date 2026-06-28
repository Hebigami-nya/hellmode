
# Adds a score to track nearby entities
execute as @s at @s run scoreboard players set @e[distance=..6] the_world_is_mine 5

# Add to a random nearby entity the next_the_world_is_mine tag
execute as @s at @s run tag @e[distance=..7,limit=1,tag=!next_the_world_is_mine,tag=!the_world_is_mine] add next_the_world_is_mine

# Addes the attribute - required since only one entity can be manipulated at the same time
attribute @e[tag=next_the_world_is_mine,tag=!the_world_is_mine,limit=1] minecraft:scale modifier add hellmode:the_world_is_mine -0.9375 add_multiplied_total

# Adds a tag to mark the entity as updated
execute as @s at @s run tag @e[distance=..8,limit=1,tag=next_the_world_is_mine,tag=!the_world_is_mine] add the_world_is_mine

