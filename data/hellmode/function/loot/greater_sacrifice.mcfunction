# Transforms an Item offered to the Altar of Eternity into a loot table roll
tag @e[type=end_crystal,tag=modified] remove altar_greater_sacrifice
execute as @e[type=end_crystal,tag=modified] at @s if entity @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{isGreaterSacrifice:1b}}}}] run tag @s add altar_greater_sacrifice
execute at @e[tag=altar_greater_sacrifice] run kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{isGreaterSacrifice:1b}}}},limit=1]
execute at @e[tag=altar_greater_sacrifice] run particle explosion_emitter ~ ~1.15 ~ 0.1 0.1 0.1 0.0001 20 normal
execute at @e[tag=altar_greater_sacrifice] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20]
execute at @e[tag=altar_greater_sacrifice] run loot spawn ~ ~ ~ loot hellmode:entity/greater_sacrifice
