# Prepares the data storage
data modify storage hellmode:permanent_player_aggression player set from entity @s UUID

# Set neutral mobs player aggression
function hellmode:ability/aggression_macro with storage hellmode:permanent_player_aggression