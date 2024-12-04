say Eliminated !
tag @s remove wmbr.player
gamemode spectator
spectate @p[tag=wmbr.player]
function wmbr:macros/count_players
execute if score remaining_players wmbr.data matches ..1 as @a[tag=wmbr.player] run function wmbr:macros/declare_victory