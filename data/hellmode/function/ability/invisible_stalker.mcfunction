execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.head * run scoreboard players add @s generic_speed 29
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.chest * run scoreboard players add @s generic_speed 29
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.legs * run scoreboard players add @s generic_speed 29
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.feet * run scoreboard players add @s generic_speed 29

execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.head * run scoreboard players add @s generic_jump_boost 29
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.chest * run scoreboard players add @s generic_jump_boost 29
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.legs * run scoreboard players add @s generic_jump_boost 29
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.feet * run scoreboard players add @s generic_jump_boost 29

execute as @a if items entity @s hotbar.* minecraft:echo_shard[custom_data={givesStalkerHealingBuffs:1b}] if predicate hellmode:is_sneaking run scoreboard players add @s generic_regeneration 20
execute as @a if items entity @s hotbar.* minecraft:echo_shard[custom_data={givesStalkerHealingBuffs:1b}] if predicate hellmode:is_invisible run scoreboard players add @s generic_regeneration 20
