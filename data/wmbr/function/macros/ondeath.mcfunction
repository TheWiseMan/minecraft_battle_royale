scoreboard players remove @s wmbr.lives 1
execute if score @s wmbr.lives matches ..0 as @s run function wmbr:macros/eliminate
execute if score @s wmbr.lives matches 1.. as @s at @s run function wmbr:macros/take_life
scoreboard players reset @s wmbr.ondeath