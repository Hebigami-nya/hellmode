# checks the mirror_core_resistance scorebord and runs the macro
# TODO: check if this works in multiplayer
execute as @s if score @s mirror_core_resistance matches 0.. store result storage hellmode:apply_effects this.resistance int 1 run scoreboard players get @s mirror_core_resistance
execute as @s if score @s mirror_core_resistance matches 0.. run function hellmode:ability/apply_effects_macro with storage hellmode:apply_effects this