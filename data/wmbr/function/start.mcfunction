worldborder center ~ ~
setworldspawn ~ ~ ~
worldborder set 20
data modify storage wmbr:data border.center set from entity @s Pos
data modify storage wmbr:data border.center_x set from entity @s Pos[0]
data modify storage wmbr:data border.center_y set from entity @s Pos[2]
tag @a remove wmbr.gm
tag @a add wmbr.player
team leave @a[tag=wmbr.player]
tag @s add wmbr.gm

function wmbr:macros/measure_border
function wmbr:macros/spread_players with storage wmbr:data border
function wmbr:reset
difficulty peaceful
effect give @a[tag=wmbr.player] weakness infinite 255 true
gamerule doImmediateRespawn true
execute as @a[tag=wmbr.player] at @s run spawnpoint @s ~ ~ ~
# 1. Enroll everyone, and make sure if someone joins during the BR, they can't interfere
scoreboard players set wmbr.tick wmbr.timeline 1
tellraw @a ["",{"text":"\u2261 ","color":"gold"}, {"selector": "@s"},{"text":" started a new BR"}]
# 2. Start team selection
scoreboard players set wmbr.tick wmbr.timeline 2
execute as @a[tag=wmbr.player] run function wmbr:start_2_team_select
tellraw @a[tag=wmbr.player] ["",{"text":"\u2261 ","color":"gold"},{"text":"Choose your team by dropping one of the colored "},{"text":"w","color":"red"},{"text":"o","color":"yellow"},{"text":"o","color":"green"},{"text":"l","color":"aqua"},{"text":"s in your inventory."}]