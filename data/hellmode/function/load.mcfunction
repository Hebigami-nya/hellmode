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
scoreboard objectives add mirror_core_resistance dummy

# Tracks if player kills a lot of mobs in a short time to avoid hyper efficient farming
scoreboard objectives add loot_balancing dummy
scoreboard players set @a loot_balancing 0

# Required to prevent players from sleeping
scoreboard objectives add times_slept minecraft.custom:minecraft.sleep_in_bed

# Loading Announcement
tellraw @a [{"text":"Loading ","color":"green"},{"text":"[Hebigami's Hellmode] ","color":"gold"}]