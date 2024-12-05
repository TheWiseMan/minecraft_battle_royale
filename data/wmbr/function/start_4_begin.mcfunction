function wmbr:reset
execute as @s[tag=wmbr.player] run function wmbr:macros/spawn_bonuses
worldborder set 1000

function wmbr:macros/measure_border
function wmbr:macros/spread_players with storage wmbr:data border
scoreboard players set wmbr.tick wmbr.timeline 5

give @a[tag=wmbr.player] compass[enchantments={levels:{binding_curse:1}},unbreakable={},lore=["\"You should probably keep this\""]]
give @a[tag=wmbr.player] wooden_axe
gamemode survival @a[tag=wmbr.player]
difficulty normal
advancement grant @a[tag=wmbr.player] only story/root
advancement grant @a[tag=wmbr.player] only adventure/root

# countdown
scoreboard players set wmbr.promise wmbr.timeline 5
scoreboard players operation wmbr.countdown_max wmbr.timeline = prep_time wmbr.config
scoreboard players operation wmbr.countdown wmbr.timeline = prep_time wmbr.config
function wmbr:macros/countdown_seconds