bossbar set wmbr:countdown visible true
bossbar set wmbr:countdown players @a[tag=wmbr.player]
execute store result bossbar wmbr:countdown max run scoreboard players get wmbr.countdown_max wmbr.timeline
execute store result bossbar wmbr:countdown value run scoreboard players get wmbr.countdown wmbr.timeline
bossbar set wmbr:countdown color yellow
bossbar set wmbr:countdown style progress
bossbar set wmbr:countdown name "Preparation"