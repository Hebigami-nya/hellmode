# Seperate functions running once a sec to revert "This World is Mine!"
scoreboard players remove @e[scores={the_world_is_mine=1..}] the_world_is_mine 1

attribute @e[scores={the_world_is_mine=0},tag=the_world_is_mine,limit=1] minecraft:scale modifier remove hellmode:the_world_is_mine
tag @e[scores={the_world_is_mine=0},tag=the_world_is_mine] remove the_world_is_mine
tag @e[scores={the_world_is_mine=0},tag=next_the_world_is_mine] remove next_the_world_is_mine