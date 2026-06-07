# Teleports the player to the last coord stored in hellmode:player
# $ allows capture of variables
# note especially the starting $
$execute in minecraft:overworld run teleport @s $(x) $(y) $(z)
$execute in minecraft:overworld run spawnpoint @s $(x) $(y) $(z)
weather clear
time set 0t
scoreboard players set #daytime timer 0