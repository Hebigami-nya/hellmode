execute as @a[scores={killed_sheep=1..}] run summon sheep ~ ~ ~ {Age:-6000} 
scoreboard players set @a[scores={killed_sheep=1..}] killed_sheep 0
execute as @a[scores={killed_cow=1..}] run summon cow ~ ~ ~ {Age:-6000} 
scoreboard players set @a[scores={killed_cow=1..}] killed_cow 0
execute as @a[scores={killed_pig=1..}] run summon pig ~ ~ ~ {Age:-6000} 
scoreboard players set @a[scores={killed_pig=1..}] killed_pig 0
