scoreboard players add @a hr 0
scoreboard players add @a min 0
scoreboard players add @a sec 0
tellraw @a [{"text":"[","color":"gray"},{"selector":"@s","color":"yellow"},{"text":"]：","color":"white"},{"score":{"name":"@s","objective":"hr"},"color":"green"},"時 ",{"score":{"name":"@s","objective":"min"},"color":"green"},"分 ",{"score":{"name":"@s","objective":"sec"},"color":"green"},"秒"]