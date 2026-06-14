
# Runs in the nightmare world and replaces all types of Air with void_air
execute at @a in hellmode:nightmare_world run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:light replace minecraft:air
execute at @a in hellmode:nightmare_world run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:light replace minecraft:cave_air
execute at @a in hellmode:nightmare_world run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:light replace minecraft:void_air

# Gives the players in the Nightmare World darkness
execute in hellmode:nightmare_world run effect give @a[gamemode=adventure] minecraft:blindness 3 0

# Summons Vex to attack players
# 2% chance per sec to spawn
execute if score #random random matches 0..19 at @a in hellmode:nightmare_world run summon vex ~ ~20 ~ {id:"minecraft:vex",Tags:["modified","nightmare_vex"],CustomName:"Nightmare Vex",attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:scale",base:2.5}]}