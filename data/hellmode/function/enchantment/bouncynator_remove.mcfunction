# Removing Attributes for Bouncynator Enchantment
attribute @s minecraft:bounciness modifier remove bouncynator_bouncyness
attribute @s minecraft:air_drag_modifier modifier remove bouncynator_air_drag_modifier
attribute @s minecraft:friction_modifier modifier remove bouncynator_friction_modifier
attribute @s minecraft:fall_damage_multiplier base reset

say is no longer bouncy!

tag @s remove isBouncy
tag @s add skipAddingBouncy