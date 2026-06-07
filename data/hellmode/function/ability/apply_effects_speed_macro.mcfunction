# takes a storage with this.speed and applies the effect
$execute as @s if score @s invisible_stalker_speed matches 0.. run effect give @s minecraft:speed 2 $(speed_jump_boost)
$execute as @s if score @s invisible_stalker_speed matches 0.. run effect give @s minecraft:jump_boost 2 $(speed_jump_boost)
