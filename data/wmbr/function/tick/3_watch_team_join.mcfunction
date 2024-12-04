execute as @a[scores={wmbr.select_team_red=1..}] at @s run function wmbr:macros/join_red
execute as @a[scores={wmbr.select_team_yellow=1..}] at @s run function wmbr:macros/join_yellow
execute as @a[scores={wmbr.select_team_green=1..}] at @s run function wmbr:macros/join_green
execute as @a[scores={wmbr.select_team_blue=1..}] at @s run function wmbr:macros/join_blue
execute store result score teamless_players wmbr.data if entity @a[team=]