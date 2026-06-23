# Set difficulty
difficulty hard

# Time tracking
scoreboard objectives add timer dummy
scoreboard players set #20ticksLoop timer 0
scoreboard players set #daytime timer 0

# Random generator
scoreboard objectives add random dummy
scoreboard players set #random random 0

# Allow Players to keep their inventory on death
gamerule keep_inventory true

# Enables tracking Player death stats
scoreboard objectives add deaths deathCount Deaths
scoreboard objectives setdisplay list deaths

# Skeleton Farmer Drop tracking
scoreboard objectives add used_iron_hoe minecraft.used:minecraft.iron_hoe
# Undead Farmhand Drop tracking
scoreboard objectives add killed_sheep minecraft.killed:minecraft.sheep
scoreboard objectives add killed_cow minecraft.killed:minecraft.cow
scoreboard objectives add killed_pig minecraft.killed:minecraft.pig

# Allows tracking of last player position
scoreboard objectives add last_pos_x dummy X
scoreboard objectives add last_pos_y dummy Y
scoreboard objectives add last_pos_z dummy Z

# Lightning Core
scoreboard objectives add lightning dummy

# Counts the wolf for Pack Leader
scoreboard objectives add wolf_count dummy

# Overlord of Mirrors tracking
scoreboard objectives add overlord_of_mirrors_count dummy
scoreboard objectives add overlord_of_mirrors_summon_cooldown dummy

# The Black King Drop Sprint tracking
scoreboard objectives add sprint_one_cm minecraft.custom:minecraft.sprint_one_cm

# Health Tracking
scoreboard objectives add health dummy Health 
scoreboard objectives setdisplay below_name health

# Tracks if player kills a lot of mobs in a short time to avoid hyper efficient farming
scoreboard objectives add loot_balancing_short dummy
scoreboard players set @a loot_balancing_short 0
# Tracks if player kills a lot of mobs in a longer time to avoid efficient farming
scoreboard objectives add loot_balancing_long dummy
scoreboard players set @a loot_balancing_long 0

# Tracks Growing Creepers
scoreboard objectives add growing_creeper_size dummy

# Tracks generic effects
scoreboard objectives add generic_absorbtion dummy
scoreboard objectives add generic_haste dummy
scoreboard objectives add generic_jump_boost dummy
scoreboard objectives add generic_poison dummy
scoreboard objectives add generic_regeneration dummy
scoreboard objectives add generic_resistance dummy
scoreboard objectives add generic_slowness dummy
scoreboard objectives add generic_speed dummy
scoreboard objectives add generic_strength dummy
scoreboard objectives add generic_weakness dummy
scoreboard objectives add generic_wither dummy

# Required to prevent players from sleeping easily
scoreboard objectives add times_slept minecraft.custom:minecraft.sleep_in_bed
scoreboard players set @a times_slept 0
# Only one player needs to go to the nightmare world
gamerule players_sleeping_percentage 1

# Displays player stats on lectern use
scoreboard objectives add used_lectern minecraft.custom:minecraft.interact_with_lectern

# Loading Announcement
tellraw @a [{"text":"Loading ","color":"green"},{"text":"[Hebigami's Hellmode] ","color":"gold"},{"text":"\nVersion 0.1.1","color":"white"}]