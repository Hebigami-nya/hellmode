# Skeleton Farmer Drop Ability
# Gives the Player Bonemeal on use of Skeleton Farmer's Hoe
execute as @a[scores={used_iron_hoe=1..}] if items entity @s weapon.mainhand minecraft:iron_hoe[custom_data={createsBonemeal:1b}] run give @s minecraft:bone_meal 1
scoreboard players set @a[scores={used_iron_hoe=1..}] used_iron_hoe 0