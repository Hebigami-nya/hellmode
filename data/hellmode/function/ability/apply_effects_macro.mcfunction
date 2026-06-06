# takes a storage with this.resistance and applies the effect
$execute as @s if score @s mirror_core_resistance matches 0.. run effect give @s minecraft:resistance 2 $(resistance)
scoreboard players set @a mirror_core_resistance -1

# takes a storage with this.speed and applies the effect
$execute as @s if score @s invisible_stalker_speed matches 0.. run effect give @s minecraft:speed 2 $(speed_jump_boost)
$execute as @s if score @s invisible_stalker_speed matches 0.. run effect give @s minecraft:jump_boost 2 $(speed_jump_boost)

# takes a storage with this.strength and applies the effect
$execute as @s if score @s assassinate_strength matches 0.. run effect give @s minecraft:strength 2 $(strength_)