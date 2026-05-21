# Sneaky Enderman Ability
# Removes the passive Invisibility of Sneaky Enderman if they come close to a player
execute at @a if entity @e[tag=sneaky_enderman,distance=..6] run effect clear @e[tag=sneaky_enderman,distance=..3] minecraft:invisibility