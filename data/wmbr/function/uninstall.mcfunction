# This function clears everything related to this datapack
scoreboard objectives remove wmbr.config
scoreboard objectives remove wmbr.data
scoreboard objectives remove wmbr.kills
scoreboard objectives remove wmbr.lives
scoreboard objectives remove wmbr.ondeath
scoreboard objectives remove wmbr.select_team_red
scoreboard objectives remove wmbr.select_team_yellow
scoreboard objectives remove wmbr.select_team_green
scoreboard objectives remove wmbr.select_team_blue

bossbar remove wmbr:countdown
team remove wmbr.red
team remove wmbr.yellow
team remove wmbr.green
team remove wmbr.blue

data remove storage wmbr:data ""