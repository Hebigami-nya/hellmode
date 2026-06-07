# Teleports the player to the last coord stored in hellmode:player
# $ allows capture of variables
# note especially the starting $
$execute in minecraft:overworld run teleport @s $(x) $(y) $(z)
$execute in minecraft:overworld run spawnpoint @s $(x) $(y) $(z)
weather clear
time set 0t
scoreboard players set #daytime timer 0
# TODO: test if this fixes the issue of jumping out of bed instantly
# scoreboard players set @a times_slept 0