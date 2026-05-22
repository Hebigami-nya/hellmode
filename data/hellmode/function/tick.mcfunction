# Basic time counter for a 20 ticks interval
scoreboard players add #20ticksLoop timer 1

# Tracks daytime
scoreboard players add #daytime timer 1

# Generates a new random value to fine-tune random events
execute if score #20ticksLoop timer matches 20 store result score #random random run random value 0..999

# Spawn monsters
execute if score #20ticksLoop timer matches 20 run function hellmode:spawn/generic

# Spawn bosses and Altar of Eternity
execute if score #daytime timer matches 18000 run function hellmode:spawn/boss

# Altar of Eternity Sacrifice
execute if score #20ticksLoop timer matches 20 run function hellmode:loot/lesser_sacrifice
execute if score #20ticksLoop timer matches 20 run function hellmode:loot/greater_sacrifice

# Prevent Sleeping
effect give @a[scores={times_slept=1..}] wither 1 2
execute as @e[type=creeper,limit=1] run msg @a[scores={times_slept=1..}] "There is no sleep in Hell..."
scoreboard players set @a[scores={times_slept=1..}] times_slept 0

# Abilities
function hellmode:ability/skeleton_farmer
function hellmode:ability/overlord_of_storms_tick
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_the_drowned
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_storms_sec
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/death_observer
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/tunneler
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/sneaky_enderman
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/swarm_spider

# Counts the loot_balancing down
execute if score #20ticksLoop timer matches 20 run scoreboard players remove @a[scores={loot_balancing=1..}] loot_balancing 1

# Reset time counters
execute if score #20ticksLoop timer matches 20.. run scoreboard players set #20ticksLoop timer 0
execute if score #daytime timer matches 24000.. run scoreboard players set #daytime timer 0