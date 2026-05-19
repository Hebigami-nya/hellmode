# Basic time counter for a 20 ticks interval
scoreboard players add #20ticksLoop timer 1

# Generates a new random value to fine-tune random events
execute if score #20ticksLoop timer matches 20 store result score #random random run random value 0..999

# Summon monsters
execute if score #20ticksLoop timer matches 20 run function hellmode:summon

# Prevent Sleeping
effect give @a[scores={times_slept=1..}] wither 1 2
execute as @e[type=creeper,limit=1] run msg @a[scores={times_slept=1..}] "There is no sleep in Hell..."
scoreboard players set @a[scores={times_slept=1..}] times_slept 0

# Lich Lord Visuals
execute if score #20ticksLoop timer matches 10 at @e[tag=lich_lord] if entity @p[distance=..20] run particle soul_fire_flame ~ ~2 ~ 0.5 0.5 0.5 0.05 20 normal
execute if score #20ticksLoop timer matches 20 at @e[tag=lich_lord] if entity @p[distance=..20] run particle soul_fire_flame ~ ~2 ~ 0.5 0.5 0.5 0.05 20 normal

# Swarm Spider Ability
# Summons more Swarm Spiders
execute if score #20ticksLoop timer matches 20 at @a if entity @e[tag=swarm_spider,distance=..3] run summon cave_spider ~ ~ ~ {id:"minecraft:cave_spider",Health:6f,Tags:["modified","swarm_spider"],CustomName:{"shadow_color":-5636096,"text":"Swarm Spider"},equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"MHF_CaveSpider","minecraft:custom_name":"Swarm Spider Head","minecraft:custom_data":{hasPoisonPowers:1b},"minecraft:lore":[{"italic":true,"text":"Poison Powers"}],"minecraft:attribute_modifiers":[{id:"armor",type:"armor",amount:2,operation:"add_value"}]}}},drop_chances:{head:0.010},attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:scale",base:0.2}]}

# Sneaky Enderman Ability
# Removes the passive Invisibility of Sneaky Enderman if they come close to a player
execute if score #20ticksLoop timer matches 20 at @a if entity @e[tag=sneaky_enderman,distance=..6] run effect clear @e[tag=sneaky_enderman,distance=..3] minecraft:invisibility

# Ghast Fireball Ability
# Increases the explosion strength of Ghast Fireballs
data merge entity @e[type=fireball,tag=!modified,limit=1] {ExplosionPower:12b,Tags:["modified"]}

# Tunneler Ability
# Breaks blocks in front of the Tunneler
execute if score #20ticksLoop timer matches 20 as @e[tag=tunneler] at @s run setblock ^ ^ ^1 minecraft:air destroy

# Swarm Spider Drop Ability
# Give Players a buff when they are poisoned
execute if score #20ticksLoop timer matches 20 as @a if items entity @s armor.head minecraft:player_head[custom_data={hasPoisonPowers:1b}] if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:strength 3 3
execute if score #20ticksLoop timer matches 20 as @a if items entity @s armor.head minecraft:player_head[custom_data={hasPoisonPowers:1b}] if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:speed 3 3
execute if score #20ticksLoop timer matches 20 as @a if items entity @s armor.head minecraft:player_head[custom_data={hasPoisonPowers:1b}] if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:jump_boost 3 3
execute if score #20ticksLoop timer matches 20 as @a if items entity @s armor.head minecraft:player_head[custom_data={hasPoisonPowers:1b}] if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:resistance 3 1

# Death Observer Drop Ability
# Gives Players permanent night vision as long as the Spyglass is in the hotbar
execute if score #20ticksLoop timer matches 20 as @a if items entity @s hotbar.* minecraft:spyglass[custom_data={hasNightVision:1b}] run effect give @s minecraft:night_vision 12 0

# Skeleton Farmer Drop Ability
# Gives the Player Bonemeal on use of Skeleton Farmer's Hoe
execute as @a[scores={used_iron_hoe=1..}] if items entity @s weapon.mainhand minecraft:iron_hoe[custom_data={createsBonemeal:1b}] run give @s minecraft:bone_meal 1
scoreboard players set @a[scores={used_iron_hoe=1..}] used_iron_hoe 0

# Reset time counters
execute if score #20ticksLoop timer matches 20.. run scoreboard players set #20ticksLoop timer 0