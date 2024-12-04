# function to be ran once, on the first use of the datapack on an instance.
# Creates long-lasting scores that can be used for leaderboards and such
scoreboard objectives add wmbr.data dummy
scoreboard objectives add wmbr.victories dummy
scoreboard objectives add wmbr.ondeath deathCount
scoreboard objectives add wmbr.timeline dummy
scoreboard objectives add wmbr.config dummy
scoreboard objectives add wmbr.kills playerKillCount
scoreboard objectives add wmbr.lives dummy
# prep_time, kill_time, lives
scoreboard objectives add wmbr.select_team_red minecraft.dropped:red_wool
scoreboard objectives add wmbr.select_team_green minecraft.dropped:green_wool
scoreboard objectives add wmbr.select_team_blue minecraft.dropped:blue_wool
scoreboard objectives add wmbr.select_team_yellow minecraft.dropped:yellow_wool

scoreboard objectives modify wmbr.lives rendertype hearts

bossbar add wmbr:countdown "Time remaining"

team add wmbr.red
team add wmbr.green
team add wmbr.blue
team add wmbr.yellow

team modify wmbr.red color red
team modify wmbr.yellow color yellow
team modify wmbr.green color green
team modify wmbr.blue color blue

team modify wmbr.red prefix ["",{"text": "[", "color": "white"}, {"text": "RED", "color": "#ff0000"}, {"text": "] ", "color": "white"}]
team modify wmbr.yellow prefix ["",{"text": "[", "color": "white"}, {"text": "YEL", "color": "#e5ff00"}, {"text": "] ", "color": "white"}]
team modify wmbr.green prefix ["",{"text": "[", "color": "white"}, {"text": "GRE", "color": "#1eff00"}, {"text": "] ", "color": "white"}]
team modify wmbr.blue prefix ["",{"text": "[", "color": "white"}, {"text": "BLU", "color": "#008cff"}, {"text": "] ", "color": "white"}]

scoreboard players set prep_time wmbr.config 20
scoreboard players set kill_time wmbr.config 10
scoreboard players set lives wmbr.config 3

say "WiseMan's Battle Royale installed."
tellraw @s ["",{"text":"To start a Battle Royale, use "},{"text":"/function wmbr:start","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/function wmbr:start"}}]