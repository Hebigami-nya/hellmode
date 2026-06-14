# Swarm Spider Ability
# Summons more Swarm Spiders
execute as @a at @s if entity @e[tag=swarm_spider,distance=..3] if predicate hellmode:is_low_light run summon cave_spider ~ ~ ~ {id:"minecraft:cave_spider",Health:6f,Tags:["modified","swarm_spider"],CustomName:{"shadow_color":-5636096,"text":"Swarm Spider"},equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"MHF_CaveSpider","minecraft:custom_name":"Swarm Spider Head","minecraft:custom_data":{hasPoisonPowers:1b},"minecraft:lore":[{"italic":true,"text":"Poison Powers"}],"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:2,operation:"add_value"}]}}},drop_chances:{head:0.010},attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:scale",base:0.2}]}

# Swarm Spider Drop Ability
# Give Players a buff when they are poisoned
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.head *[custom_data={hasPoisonPowers:1b}] run scoreboard players add @s generic_strength 60
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.head *[custom_data={hasPoisonPowers:1b}] run scoreboard players add @s generic_regeneration 10
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.chest *[custom_data={hasPoisonPowers:1b}] run scoreboard players add @s generic_resistance 40
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.legs *[custom_data={hasPoisonPowers:1b}] run scoreboard players add @s generic_jump_boost 60
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.feet *[custom_data={hasPoisonPowers:1b}] run scoreboard players add @s generic_speed 60