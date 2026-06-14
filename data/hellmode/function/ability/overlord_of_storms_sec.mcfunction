# Set Weather to Lightning Storm for flavor
execute at @e[tag=overlord_of_storms] if entity @p[distance=..20] run weather thunder 30s

# Overlord of Storms Ability
# 20% chance to summon a lightning bolt and teleport to attacker
execute if score #random random matches 0..199 as @e[tag=overlord_of_storms] on attacker at @s run summon minecraft:lightning_bolt ~ ~ ~
execute if score #random random matches 0..199 as @e[tag=overlord_of_storms] on attacker as @s run teleport @e[tag=overlord_of_storms] @s

effect give @a[scores={lightning=1..}] minecraft:fire_resistance 3 0

scoreboard players add @a[scores={lightning=1..}] generic_strength 10

scoreboard players add @a[scores={lightning=30..}] generic_strength 40
scoreboard players add @a[scores={lightning=30..}] generic_resistance 10

scoreboard players add @a[scores={lightning=60..}] generic_strength 70

scoreboard players add @a[scores={lightning=90..}] generic_strength 100
scoreboard players add @a[scores={lightning=90..}] generic_resistance 40

scoreboard players add @a[scores={lightning=120..}] generic_strength 130
scoreboard players add @a[scores={lightning=120..}] generic_regeneration 10

scoreboard players add @a[scores={lightning=150..}] generic_resistance 70
scoreboard players add @a[scores={lightning=150..}] generic_regeneration 40

scoreboard players remove @a[scores={lightning=1..}] lightning 1
