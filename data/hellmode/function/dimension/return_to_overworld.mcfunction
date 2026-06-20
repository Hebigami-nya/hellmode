# Teleports the player to the last coord stored in hellmode:player
# $ allows capture of variables
# note especially the starting $

say "teleporting to overworld"
$execute in minecraft:overworld run teleport @s $(x) $(y) $(z)
$execute in minecraft:overworld run spawnpoint @s $(x) $(y) $(z)
weather clear
time set 0t
scoreboard players set #daytime timer 0
gamemode survival @s[gamemode=adventure]
scoreboard players set @s times_slept 0