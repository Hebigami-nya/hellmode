# Basic time counter for a 20 ticks interval
scoreboard players add #20ticksLoop timer 1

# Tracks daytime
scoreboard players add #daytime timer 1

# Generates a new random value to fine-tune random events
execute if score #20ticksLoop timer matches 20 store result score #random random run random value 0..999

# Make air in the Nightmare world climbable
execute if score #20ticksLoop timer matches 20 run function hellmode:dimension/nightmare_world

# Teleports sleeping Player to the Nightmare Realm
execute if score #20ticksLoop timer matches 20 as @a[scores={times_slept=1..}] run function hellmode:dimension/nightmare_teleport

# Spawn monsters
execute if score #20ticksLoop timer matches 10 run function hellmode:spawn/generic

# Spawn bosses and Altar of Eternity
execute if score #daytime timer matches 18000 run function hellmode:spawn/boss

# Altar of Eternity Sacrifice
execute if score #20ticksLoop timer matches 20 run function hellmode:loot/lesser_sacrifice
execute if score #20ticksLoop timer matches 20 run function hellmode:loot/greater_sacrifice

# Abilities
function hellmode:ability/skeleton_farmer
function hellmode:ability/overlord_of_storms_tick
function hellmode:spawn/health_tracking
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_the_drowned
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_mirrors
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_storms_sec
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/sorcerours_overlord
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/invisible_stalker
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/death_observer
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/tunneler
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/sneaky_enderman
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/swarm_spider


# Counts the loot_balancing down
execute if score #20ticksLoop timer matches 20 run scoreboard players remove @a[scores={loot_balancing=1..}] loot_balancing 1

# Trigger player aggression in neutral mobs
execute if score #20ticksLoop timer matches 20 as @a at @s if entity @e[tag=permanent_player_aggression,distance=..16] run function hellmode:ability/aggression

# Reset time counters
execute if score #20ticksLoop timer matches 20.. run scoreboard players set #20ticksLoop timer 0
execute if score #daytime timer matches 24000.. run time set 0t
execute if score #daytime timer matches 24000.. run scoreboard players set #daytime timer 0