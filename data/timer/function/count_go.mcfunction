advancement revoke @a only timer:participants
advancement revoke @a only timer:killed_dragon
advancement grant @a only timer:participants
scoreboard players set @a sec 0
scoreboard players set @a min 0
scoreboard players set @a hr 0
scoreboard players reset @a death
clear @a[gamemode=survival]
title @a title "開始！"
schedule function timer:add_time 1s replace