# Boss Kill Bonus Loot
# Runs as the player who made the kill

# Revoke this advancement immediately so it fires again on the next tagged kill
advancement revoke @s only hellmode:kill_boss

# Ambient sound 
execute at @s run playsound minecraft:entity.ender_dragon.death ambient @a[distance=..100]

# Give the player that scored the kill a Shard of Broken Souls
give @s quartz[custom_name={"color":"white","shadow_color":-22016,"text":"Broken Soul Shard"},custom_data={isGreaterSacrifice:1b},enchantment_glint_override=true,lore=[{"italic":true,"text":"Can be Sacrificed to Recieve a Greater Boon from the Eternal Ones"}]] 1