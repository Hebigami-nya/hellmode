# Takes a player UUID as input and sets the aggression target
$execute at @s run data merge entity @e[tag=permanent_player_aggression,limit=1,distance=..16] {angry_at:$(player)}

