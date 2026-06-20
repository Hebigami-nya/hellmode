# Basic time counter for a 20 ticks interval
scoreboard players add #20ticksLoop timer 1

# Tracks daytime
scoreboard players add #daytime timer 1

# Generates a new random value to fine-tune random events
execute if score #20ticksLoop timer matches 20 store result score #random random run random value 0..999

# Initialised new players
execute if score #20ticksLoop timer matches 20 as @a[tag=!init] run function hellmode:spawn/player_init

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
execute at @a as @e[tag=growing_creeper,distance=..5] run function hellmode:ability/growing_creeper
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_the_drowned
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_mirrors
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/overlord_of_storms_sec
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/sorcerours_overlord
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/invisible_stalker
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/death_observer
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/tunneler
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/sneaky_enderman
execute if score #20ticksLoop timer matches 20 run function hellmode:ability/swarm_spider

# Applys Generic Effects to players based on a score
execute if score #20ticksLoop timer matches 1 run function hellmode:ability/generic_effect

# Remove invisibility from wolfs
execute if score #20ticksLoop timer matches 20 run effect clear @e[type=wolf] minecraft:invisibility

# Dire Wolf "despawning" during the day
execute if score #daytime timer matches 0..12000 if score #20ticksLoop timer matches 20 if score #random random matches 0..199 run teleport @e[tag=dire_wolf,limit=1] 0 -100 0

# Counts the loot_balancing down
execute if score #20ticksLoop timer matches 20 run scoreboard players remove @a[scores={loot_balancing_short=1..}] loot_balancing_short 1
execute if score #20ticksLoop timer matches 20 run scoreboard players remove @a[scores={loot_balancing_long=1..}] loot_balancing_long 1

# Trigger player aggression in neutral mobs
execute if score #20ticksLoop timer matches 20 as @a at @s if entity @e[tag=permanent_player_aggression,distance=..16] run function hellmode:ability/aggression

# Reset time counters
execute if score #20ticksLoop timer matches 20.. run scoreboard players set #20ticksLoop timer 0
execute if score #daytime timer matches 24000.. run time set 0t
execute if score #daytime timer matches 24000.. run scoreboard players set #daytime timer 0