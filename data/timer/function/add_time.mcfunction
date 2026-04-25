# 如果玩家沒有分數，則設為 0
execute as @a unless score @s hr matches ..2147483647 run scoreboard players set @s hr 0
execute as @a unless score @s min matches ..2147483647 run scoreboard players set @s min 0
execute as @a unless score @s sec matches ..2147483647 run scoreboard players set @s sec 0

scoreboard players add @a sec 1
execute as @a if score @s sec matches 60.. run scoreboard players add @s min 1
execute as @a if score @s sec matches 60.. run scoreboard players remove @s sec 60
execute as @a if score @s min matches 60.. run scoreboard players add @s hr 1
execute as @a if score @s min matches 60.. run scoreboard players remove @s min 60

execute as @a if score @s hr matches 0 if score @s min matches 0 run title @s actionbar [{"score":{"name":"@s","objective":"sec"}}]
execute as @a if score @s hr matches 0 if score @s min matches 1.. run title @s actionbar [{"score":{"name":"@s","objective":"min"}},":",{"score":{"name":"@s","objective":"sec"}}]
execute as @a if score @s hr matches 1.. run title @s actionbar [{"score":{"name":"@s","objective":"hr"}},":",{"score":{"name":"@s","objective":"min"}},":",{"score":{"name":"@s","objective":"sec"}}]

schedule function timer:add_time 1s replace