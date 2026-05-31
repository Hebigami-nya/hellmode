# Swarm Spider Ability
# Summons more Swarm Spiders
execute at @a if entity @e[tag=swarm_spider,distance=..3] run summon cave_spider ~ ~ ~ {id:"minecraft:cave_spider",Health:6f,Tags:["modified","swarm_spider"],CustomName:{"shadow_color":-5636096,"text":"Swarm Spider"},equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"MHF_CaveSpider","minecraft:custom_name":"Swarm Spider Head","minecraft:custom_data":{hasPoisonPowers:1b},"minecraft:lore":[{"italic":true,"text":"Poison Powers"}],"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:2,operation:"add_value"}]}}},drop_chances:{head:0.010},attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:scale",base:0.2}]}

# Swarm Spider Drop Ability
# Give Players a buff when they are poisoned
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.head *[custom_data={hasPoisonPowers:1b}] run effect give @s minecraft:strength 3 3
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.head *[custom_data={hasPoisonPowers:1b}] run effect give @s minecraft:regeneration 3 0
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.chest *[custom_data={hasPoisonPowers:1b}] run effect give @s minecraft:resistance 3 2
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.legs *[custom_data={hasPoisonPowers:1b}] run effect give @s minecraft:jump_boost 3 3
execute as @e[predicate=hellmode:is_poisoned] on attacker as @s if items entity @s armor.feet *[custom_data={hasPoisonPowers:1b}] run effect give @s minecraft:speed 3 3