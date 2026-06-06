# Counts the number of nearby mirror images
scoreboard players set @e[tag=overlord_of_mirrors] overlord_of_mirrors_count 0
execute as @e[tag=mirror_image] at @s run scoreboard players add @e[tag=overlord_of_mirrors,distance=..80] overlord_of_mirrors_count 1

# Applies Invsibility and Speed to Overlord of Mirrors if less than 5 mirrors exist
execute if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_count matches 0..4 if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_summon_cooldown matches 0 run effect give @e[tag=overlord_of_mirrors] minecraft:invisibility 6 0
execute if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_count matches 0..4 if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_summon_cooldown matches 0 run effect give @e[tag=overlord_of_mirrors] minecraft:speed 5 4

# Summons a mirror image
execute if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_count matches 0..4 if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_summon_cooldown matches 0 as @e[tag=overlord_of_mirrors] at @s run summon illusioner ~ ~ ~ {id:"minecraft:illusioner",Silent:1b,CustomNameVisible:1b,Health:1f,Tags:["modified","mirror_image"],CustomName:{"shadow_color":-43521,"text":"Overlord of Mirrors"},equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":{"shadow_color":-43521,"text":"Mirrorbow"},"minecraft:enchantments":{"power":5,"punch":5,"mending":1,"unbreaking":3}}},offhand:{id:"minecraft:heavy_core",count:1,components:{"minecraft:damage_resistant":{types:["lightning_bolt","in_fire","lava","explosion","on_fire"]},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{givesMarkerBuffs:1b},"minecraft:custom_name":{"color":"black","shadow_color":-43521,"text":"Mirror Core"}}}},drop_chances:{mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:follow_range",base:128},{id:"minecraft:max_health",base:1},{id:"minecraft:step_height",base:10}]}

# Adds the cooldown of the Summon Ability
execute if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_count matches 0..4 if score @e[tag=overlord_of_mirrors,limit=1] overlord_of_mirrors_summon_cooldown matches 0 run scoreboard players add @e[tag=overlord_of_mirrors] overlord_of_mirrors_summon_cooldown 6

# Counts down the cooldown of Summon Ability
scoreboard players remove @e[tag=overlord_of_mirrors,scores={overlord_of_mirrors_summon_cooldown=1..}] overlord_of_mirrors_summon_cooldown 1

# Drop Ability
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesMarkerBuffs:1b}] at @s run effect give @e[tag=modified,distance=..32] minecraft:glowing 6 0
execute as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesMarkerBuffs:1b}] run effect give @s minecraft:invisibility 3 0
execute as @a if predicate hellmode:is_sneaking if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesMarkerBuffs:1b}] run effect give @s minecraft:regeneration 3 0

