advancement revoke @a only timer:participants
advancement revoke @a only timer:killed_dragon
advancement grant @a only timer:participants
scoreboard players reset @a sec
scoreboard players reset @a min
scoreboard players reset @a hr
scoreboard players reset @a death
clear @a[gamemode=survival]
title @a title "開始！"
schedule function timer:add_time 1s replace