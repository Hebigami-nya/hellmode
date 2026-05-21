# Death Observer Drop Ability
# Gives Players permanent night vision as long as the Spyglass is in the hotbar
execute as @a if items entity @s hotbar.* minecraft:spyglass[custom_data={hasNightVision:1b}] run effect give @s minecraft:night_vision 12 0