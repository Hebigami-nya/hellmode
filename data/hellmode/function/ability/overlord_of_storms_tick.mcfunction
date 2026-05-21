# Lightning Build
# Adds "lightning" score, increasing Buffs with score
execute if entity @e[type=minecraft:lightning_bolt] as @a if items entity @s hotbar.* minecraft:heavy_core[custom_data={givesLightningBuffs:1b}] run scoreboard players add @a lightning 1