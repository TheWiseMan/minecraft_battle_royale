gamemode adventure @a[tag=wmbr.player]
advancement revoke @a[tag=wmbr.player] from minecraft:story/root
advancement revoke @a[tag=wmbr.player] from minecraft:adventure/root
advancement revoke @a[tag=wmbr.player] from minecraft:husbandry/root
advancement revoke @a[tag=wmbr.player] from minecraft:end/root
advancement revoke @a[tag=wmbr.player] from minecraft:nether/root
time set day
clear @a[tag=wmbr.player]
gamerule keepInventory true
xp set @a[tag=wmbr.player] 0 levels
xp set @a[tag=wmbr.player] 0 points
effect clear @a[tag=wmbr.player]
scoreboard players reset @a[tag=wmbr.player] wmbr.ondeath
scoreboard players set @p wmbr.kills 0
scoreboard objectives setdisplay sidebar wmbr.kills
scoreboard players operation @a wmbr.lives = lives wmbr.config
scoreboard objectives setdisplay list wmbr.lives
bossbar set wmbr:countdown visible false
schedule clear wmbr:macros/countdown_seconds