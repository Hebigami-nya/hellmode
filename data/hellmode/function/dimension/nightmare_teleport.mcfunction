
# Tracks the last position in the overworld
execute in minecraft:overworld store result score @s[scores={times_slept=1}] last_pos_x run data get entity @s Pos[0]
execute in minecraft:overworld store result score @s[scores={times_slept=1}] last_pos_y run data get entity @s Pos[1]
execute in minecraft:overworld store result score @s[scores={times_slept=1}] last_pos_z run data get entity @s Pos[2]

# TODO: make this player specific
execute store result storage hellmode:player pos.x int 1 run scoreboard players get @s last_pos_x
execute store result storage hellmode:player pos.y int 1 run scoreboard players get @s last_pos_y
execute store result storage hellmode:player pos.z int 1 run scoreboard players get @s last_pos_z

# Randomly teleports the player in the Nightmare World
execute in hellmode:nightmare_world run spreadplayers ~ ~ 1000 2000 under 128 false @s[scores={times_slept=1}]

# Set the times_slept score to 2 to mark this player is in the Nightmare World
# if times_slept reaches 3 we know that player slept in the Nightmare World
scoreboard players set @s[scores={times_slept=1}] times_slept 2

# Sets the Players gamemode to adventure in the Nightmare World
execute in hellmode:nightmare_world run gamemode adventure @s[scores={times_slept=2..},gamemode=survival] 

# Automaticly returns the player to the overworld if it is day
execute if score #daytime timer matches ..11999 in hellmode:nightmare_world run gamemode survival @s[gamemode=adventure] 
execute if score #daytime timer matches ..11999 run function hellmode:dimension/return_to_overworld with storage hellmode:player pos

# Returns the player to the overworld
execute as @s[scores={times_slept=3..}] run function hellmode:dimension/return_to_overworld with storage hellmode:player pos

# Sets time to day if it is night and the player succeeded
execute if score #daytime timer matches 12000.. as @s[scores={times_slept=3..}] run time set 0t
execute if score #daytime timer matches 12000.. as @s[scores={times_slept=3..}] run scoreboard players set #daytime timer 0

# Sets the Players gamemode to survival in the Overworld
execute in minecraft:overworld run gamemode survival @s[scores={times_slept=3..},gamemode=adventure] 

# Reset Sleep Counter
scoreboard players set @s[scores={times_slept=3..}] times_slept 0