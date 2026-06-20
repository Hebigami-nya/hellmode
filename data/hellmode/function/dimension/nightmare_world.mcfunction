
# Runs in the nightmare world and replaces all types of Air with void_air
execute at @a in hellmode:nightmare_world run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:light replace minecraft:air
execute at @a in hellmode:nightmare_world run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:light replace minecraft:cave_air
execute at @a in hellmode:nightmare_world run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:light replace minecraft:void_air

# Gives the players in the Nightmare World darkness
effect give @a[gamemode=adventure] minecraft:darkness 3 0

# Summons Vex to attack players
# 2% chance per sec to spawn
execute if score #random random matches 0..19 as @a at @a in hellmode:nightmare_world run summon vex ~ ~8 ~ {id:"minecraft:vex",Tags:["modified","nightmare_vex"],CustomName:"Nightmare Vex",attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:scale",base:10}]}