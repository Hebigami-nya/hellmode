# TODO: check if this works in multiplayer

# checks the mirror_core_resistance scorebord and runs the macro
execute as @s if score @s mirror_core_resistance matches 0.. store result storage hellmode:apply_effects this.resistance int 1 run scoreboard players get @s mirror_core_resistance
execute as @s if score @s mirror_core_resistance matches 0.. run function hellmode:ability/apply_effects_macro with storage hellmode:apply_effects this

# checks the invisible_stalker_speed scorebord and runs the macro
execute as @s if score @s invisible_stalker_speed matches 0.. store result storage hellmode:apply_effects this.speed_jump_boost int 1 run scoreboard players get @s invisible_stalker_speed
execute as @s if score @s invisible_stalker_speed matches 0.. run function hellmode:ability/apply_effects_macro with storage hellmode:apply_effects this

# checks the assassinate_strength scorebord and runs the macro
execute as @s if score @s assassinate_strength matches 0.. store result storage hellmode:apply_effects this.strength_ int 1 run scoreboard players get @s assassinate_strength
execute as @s if score @s assassinate_strength matches 0.. run function hellmode:ability/apply_effects_macro with storage hellmode:apply_effects this