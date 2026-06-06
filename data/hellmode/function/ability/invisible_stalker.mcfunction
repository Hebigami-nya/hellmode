scoreboard players set @a invisible_stalker_speed -1
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.head * run scoreboard players add @s invisible_stalker_speed 1
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.chest * run scoreboard players add @s invisible_stalker_speed 1
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.legs * run scoreboard players add @s invisible_stalker_speed 1
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] unless items entity @s armor.feet * run scoreboard players add @s invisible_stalker_speed 1
execute as @a if items entity @s hotbar.* minecraft:recovery_compass[custom_data={givesStalkerBuffs:1b}] run function hellmode:ability/apply_effects

execute as @a if items entity @s hotbar.* minecraft:echo_shard[custom_data={givesStalkerHealingBuffs:1b}] if predicate hellmode:is_invisible if predicate hellmode:is_sneaking run effect give @s minecraft:regeneration 3 1
execute as @a if items entity @s hotbar.* minecraft:echo_shard[custom_data={givesStalkerHealingBuffs:1b}] if predicate hellmode:is_sneaking run effect give @s minecraft:regeneration 3 0
execute as @a if items entity @s hotbar.* minecraft:echo_shard[custom_data={givesStalkerHealingBuffs:1b}] if predicate hellmode:is_invisible run effect give @s minecraft:regeneration 3 0
