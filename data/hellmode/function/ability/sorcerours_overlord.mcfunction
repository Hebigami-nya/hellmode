# Lets Sorcerours Overlord float when the player is nearby
execute as @e[tag=sorcerours_overlord] at @s if entity @p[distance=..8] run effect give @s minecraft:levitation 3 0

# randomly summons mage bullets when the player is nearby
# 30% chance per sec
execute if score #random random matches 0..299 at @e[tag=sorcerours_overlord] as @p[distance=..32] run data modify storage hellmode:mage_bullet player set from entity @s UUID
execute if score #random random matches 0..299 as @e[tag=sorcerours_overlord] at @s if entity @p[distance=..32] run function hellmode:enchantment/mage_bullet_macro with storage hellmode:mage_bullet

# randomly summons vex when the player is nearby
# 10% chance per sec
execute if score #random random matches 300..399 as @e[tag=sorcerours_overlord] at @s if entity @p[distance=..32] run summon vex ^ ^2 ^2