# Adds generic effects based on score per player
effect give @e[scores={generic_absorbtion=120..}] minecraft:absorption 2 4
effect give @e[scores={generic_absorbtion=90..}] minecraft:absorption 2 3
effect give @e[scores={generic_absorbtion=60..}] minecraft:absorption 2 2
effect give @e[scores={generic_absorbtion=30..}] minecraft:absorption 2 1
effect give @e[scores={generic_absorbtion=1..}] minecraft:absorption 2 0

effect give @e[scores={generic_haste=120..}] minecraft:haste 2 4
effect give @e[scores={generic_haste=90..}] minecraft:haste 2 3
effect give @e[scores={generic_haste=60..}] minecraft:haste 2 2
effect give @e[scores={generic_haste=30..}] minecraft:haste 2 1
effect give @e[scores={generic_haste=1..}] minecraft:haste 2 0

effect give @e[scores={generic_jump_boost=120..}] minecraft:jump_boost 2 4
effect give @e[scores={generic_jump_boost=90..}] minecraft:jump_boost 2 3
effect give @e[scores={generic_jump_boost=60..}] minecraft:jump_boost 2 2
effect give @e[scores={generic_jump_boost=30..}] minecraft:jump_boost 2 1
effect give @e[scores={generic_jump_boost=1..}] minecraft:jump_boost 2 0

effect give @e[scores={generic_poison=120..}] minecraft:poison 2 4
effect give @e[scores={generic_poison=90..}] minecraft:poison 2 3
effect give @e[scores={generic_poison=60..}] minecraft:poison 2 2
effect give @e[scores={generic_poison=30..}] minecraft:poison 2 1
effect give @e[scores={generic_poison=1..}] minecraft:poison 2 0

effect give @e[scores={generic_regeneration=120..}] minecraft:regeneration 4 4
effect give @e[scores={generic_regeneration=90..}] minecraft:regeneration 4 3
effect give @e[scores={generic_regeneration=60..}] minecraft:regeneration 4 2
effect give @e[scores={generic_regeneration=30..}] minecraft:regeneration 4 1
effect give @e[scores={generic_regeneration=1..}] minecraft:regeneration 4 0

effect give @e[scores={generic_resistance=90..}] minecraft:resistance 2 3
effect give @e[scores={generic_resistance=60..}] minecraft:resistance 2 2
effect give @e[scores={generic_resistance=30..}] minecraft:resistance 2 1
effect give @e[scores={generic_resistance=1..}] minecraft:resistance 2 0

effect give @e[scores={generic_slowness=120..}] minecraft:slowness 2 4
effect give @e[scores={generic_slowness=90..}] minecraft:slowness 2 3
effect give @e[scores={generic_slowness=60..}] minecraft:slowness 2 2
effect give @e[scores={generic_slowness=30..}] minecraft:slowness 2 1
effect give @e[scores={generic_slowness=1..}] minecraft:slowness 2 0

effect give @e[scores={generic_speed=120..}] minecraft:speed 2 4
effect give @e[scores={generic_speed=90..}] minecraft:speed 2 3
effect give @e[scores={generic_speed=60..}] minecraft:speed 2 2
effect give @e[scores={generic_speed=30..}] minecraft:speed 2 1
effect give @e[scores={generic_speed=1..}] minecraft:speed 2 0

effect give @e[scores={generic_strength=120..}] minecraft:strength 2 4
effect give @e[scores={generic_strength=90..}] minecraft:strength 2 3
effect give @e[scores={generic_strength=60..}] minecraft:strength 2 2
effect give @e[scores={generic_strength=30..}] minecraft:strength 2 1
effect give @e[scores={generic_strength=1..}] minecraft:strength 2 0

effect give @e[scores={generic_weakness=120..}] minecraft:weakness 2 4
effect give @e[scores={generic_weakness=90..}] minecraft:weakness 2 3
effect give @e[scores={generic_weakness=60..}] minecraft:weakness 2 2
effect give @e[scores={generic_weakness=30..}] minecraft:weakness 2 1
effect give @e[scores={generic_weakness=1..}] minecraft:weakness 2 0

effect give @e[scores={generic_wither=120..}] minecraft:wither 2 4
effect give @e[scores={generic_wither=90..}] minecraft:wither 2 3
effect give @e[scores={generic_wither=60..}] minecraft:wither 2 2
effect give @e[scores={generic_wither=30..}] minecraft:wither 2 1
effect give @e[scores={generic_wither=1..}] minecraft:wither 2 0

# sets all players generic effect scores to 0 after run
scoreboard players set @e[scores={generic_absorbtion=1..}] generic_absorbtion 0
scoreboard players set @e[scores={generic_haste=1..}] generic_haste 0
scoreboard players set @e[scores={generic_jump_boost=1..}] generic_jump_boost 0
scoreboard players set @e[scores={generic_poison=1..}] generic_poison 0
scoreboard players set @e[scores={generic_regeneration=1..}] generic_regeneration 0
scoreboard players set @e[scores={generic_resistance=1..}] generic_resistance 0
scoreboard players set @e[scores={generic_slowness=1..}] generic_slowness 0
scoreboard players set @e[scores={generic_speed=1..}] generic_speed 0
scoreboard players set @e[scores={generic_strength=1..}] generic_strength 0
scoreboard players set @e[scores={generic_weakness=1..}] generic_weakness 0
scoreboard players set @e[scores={generic_wither=1..}] generic_wither 0





