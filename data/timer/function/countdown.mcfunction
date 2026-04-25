# 顯示 3
execute if score #timer countdown matches 3 run title @a title {"text":"3","color":"red","bold":true}
execute if score #timer countdown matches 3 run playsound minecraft:block.note_block.bit master @a

# 顯示 2
execute if score #timer countdown matches 2 run title @a title {"text":"2","color":"gold","bold":true}
execute if score #timer countdown matches 2 run playsound minecraft:block.note_block.bit master @a

# 顯示 1
execute if score #timer countdown matches 1 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score #timer countdown matches 1 run playsound minecraft:block.note_block.bit master @a

# 顯示 開始
execute if score #timer countdown matches 0 run title @a title {"text":"開始！","color":"green","bold":true}
execute if score #timer countdown matches 0 run playsound minecraft:entity.player.levelup master @a


# --- 遞迴計時區 ---

# 扣除分數
scoreboard players remove #timer countdown 1

# 如果分數還大於等於 0，則安排 1 秒後再次執行「自己」
execute if score #timer countdown matches 0.. run schedule function timer:countdown 20t
execute if score #timer countdown matches 0 run schedule function timer:count_go 20t