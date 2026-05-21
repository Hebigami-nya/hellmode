# Set Weather to Lightning Storm for flavor
execute at @e[tag=overlord_of_storms] if entity @p[distance=..20] run weather thunder 30s

# Overlord of Storms Ability
# 20% chance to summon a lightning bolt and teleport to attacker
execute if score #random random matches 0..199 as @e[tag=overlord_of_storms] on attacker at @s run summon minecraft:lightning_bolt ~ ~ ~
execute if score #random random matches 0..199 as @e[tag=overlord_of_storms] on attacker as @s run teleport @e[tag=overlord_of_storms] @s

effect give @a[scores={lightning=1..}] minecraft:strength 3 0
effect give @a[scores={lightning=1..}] minecraft:fire_resistance 3 0

effect give @a[scores={lightning=30..}] minecraft:strength 3 1
effect give @a[scores={lightning=30..}] minecraft:resistance 3 0

effect give @a[scores={lightning=60..}] minecraft:strength 3 2

effect give @a[scores={lightning=90..}] minecraft:strength 3 3
effect give @a[scores={lightning=90..}] minecraft:resistance 3 1

effect give @a[scores={lightning=120..}] minecraft:strength 3 4
effect give @a[scores={lightning=120..}] minecraft:regeneration 3 0

effect give @a[scores={lightning=150..}] minecraft:resistance 3 2
effect give @a[scores={lightning=150..}] minecraft:regeneration 3 1

scoreboard players remove @a[scores={lightning=1..}] lightning 1
