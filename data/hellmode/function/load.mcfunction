# Time tracking
scoreboard objectives add timer dummy
scoreboard players set #20ticksLoop timer 0

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

# Set daytime to midnight
time set 18000
# Stop day/night cycle
time pause

# Required to prevent players from sleeping
scoreboard objectives add times_slept minecraft.custom:minecraft.sleep_in_bed

# Loading Announcement
tellraw @a [{"text":"Loading ","color":"green"},{"text":"[Hebigami's Hellmode] ","color":"gold"}]