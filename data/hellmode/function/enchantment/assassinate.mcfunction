scoreboard players set @a assassinate_strength -1
execute as @s unless items entity @s armor.head * run scoreboard players add @s assassinate_strength 1
execute as @s unless items entity @s armor.chest * run scoreboard players add @s assassinate_strength 1
execute as @s unless items entity @s armor.legs * run scoreboard players add @s assassinate_strength 1
execute as @s unless items entity @s armor.feet * run scoreboard players add @s assassinate_strength 1
execute as @s run function hellmode:ability/apply_effects
scoreboard players set @a assassinate_strength -1
