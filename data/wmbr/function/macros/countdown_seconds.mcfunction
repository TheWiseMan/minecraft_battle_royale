execute if score wmbr.countdown wmbr.timeline matches ..0 run schedule clear wmbr:macros/countdown_seconds
execute if score wmbr.countdown wmbr.timeline matches ..0 if score wmbr.promise wmbr.timeline matches 2 run function wmbr:promise/2_lock_teams
execute if score wmbr.countdown wmbr.timeline matches ..0 if score wmbr.promise wmbr.timeline matches 5 run function wmbr:promise/5_preparation_end

execute if score wmbr.countdown wmbr.timeline matches 1.. run schedule function wmbr:macros/countdown_seconds 1s replace

execute if score wmbr.countdown wmbr.timeline matches 1.. if score wmbr.promise wmbr.timeline matches 2 run function wmbr:loop/2_team_countdown
execute if score wmbr.countdown wmbr.timeline matches 1.. if score wmbr.promise wmbr.timeline matches 5 run function wmbr:loop/5_preparation_countdown

scoreboard players remove wmbr.countdown wmbr.timeline 1