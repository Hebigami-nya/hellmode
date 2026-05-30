
execute as @s[tag=isBouncy] run function hellmode:enchantment/bouncynator_remove
execute as @s[tag=!isBouncy,tag=!skipAddingBouncy] run function hellmode:enchantment/bouncynator_add
tag @s remove skipAddingBouncy