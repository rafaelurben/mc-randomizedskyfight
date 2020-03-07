team add 1 {"text":"Türkis"}
team modify 1 color aqua
team modify 1 prefix {"text":"[1] - "}
team add 2 {"text":"Schwarz"}
team modify 2 color black
team modify 2 prefix {"text":"[2] - "}
team add 3 {"text":"Blau"}
team modify 3 color blue
team modify 3 prefix {"text":"[3] - "}
team add 4 {"text":"Dunkel-Türkis"}
team modify 4 color dark_aqua
team modify 4 prefix {"text":"[4] - "}
team add 5 {"text":"Dunkelblau"}
team modify 5 color dark_blue
team modify 5 prefix {"text":"[5] - "}
team add 6 {"text":"Dunkelgrau"}
team modify 6 color dark_gray
team modify 6 prefix {"text":"[6] - "}
team add 7 {"text":"Dunkelgrün"}
team modify 7 color dark_green
team modify 7 prefix {"text":"[7] - "}
team add 8 {"text":"Dunkelviolett"}
team modify 8 color dark_purple
team modify 8 prefix {"text":"[8] - "}
team add 9 {"text":"Dunkelrot"}
team modify 9 color dark_red
team modify 9 prefix {"text":"[9] - "}
team add 10 {"text":"Gold"}
team modify 10 color gold
team modify 10 prefix {"text":"[10] - "}
team add 11 {"text":"Grau"}
team modify 11 color gray
team modify 11 prefix {"text":"[11] - "}
team add 12 {"text":"Grün"}
team modify 12 color green
team modify 12 prefix {"text":"[12] - "}
team add 13 {"text":"Hellviolett"}
team modify 13 color light_purple
team modify 13 prefix {"text":"[13] - "}
team add 14 {"text":"Rot"}
team modify 14 color red
team modify 14 prefix {"text":"[14] - "}
team add 15 {"text":"Weiss"}
team modify 15 color white
team modify 15 prefix {"text":"[15] - "}
team add 16 {"text":"Gelb"}
team modify 16 color yellow
team modify 16 prefix {"text":"[16] - "}


scoreboard objectives add jointeam1 minecraft.dropped:minecraft.light_blue_wool {"text":"1","color":"aqua"}
scoreboard objectives add jointeam2 minecraft.dropped:minecraft.black_wool {"text":"2","color":"black"}
scoreboard objectives add jointeam3 minecraft.dropped:minecraft.blue_wool {"text":"3","color":"blue"}
scoreboard objectives add jointeam4 minecraft.dropped:minecraft.cyan_wool {"text":"4","color":"dark_aqua"}
scoreboard objectives add jointeam5 minecraft.dropped:minecraft.brown_wool {"text":"5","color":"dark_blue"}
scoreboard objectives add jointeam6 minecraft.dropped:minecraft.gray_wool {"text":"6","color":"dark_gray"}
scoreboard objectives add jointeam7 minecraft.dropped:minecraft.green_wool {"text":"7","color":"dark_green"}
scoreboard objectives add jointeam8 minecraft.dropped:minecraft.purple_wool {"text":"8","color":"dark_purple"}
scoreboard objectives add jointeam9 minecraft.dropped:minecraft.red_wool {"text":"9","color":"dark_red"}
scoreboard objectives add jointeam10 minecraft.dropped:minecraft.orange_wool {"text":"10","color":"gold"}
scoreboard objectives add jointeam11 minecraft.dropped:minecraft.light_gray_wool {"text":"11","color":"gray"}
scoreboard objectives add jointeam12 minecraft.dropped:minecraft.lime_wool {"text":"12","color":"green"}
scoreboard objectives add jointeam13 minecraft.dropped:minecraft.magenta_wool {"text":"13","color":"light_purple"}
scoreboard objectives add jointeam14 minecraft.dropped:minecraft.pink_wool {"text":"14","color":"red"}
scoreboard objectives add jointeam15 minecraft.dropped:minecraft.white_wool {"text":"15","color":"white"}
scoreboard objectives add jointeam16 minecraft.dropped:minecraft.yellow_wool {"text":"16","color":"yellow"}

scoreboard objectives add isready minecraft.dropped:minecraft.book {"text":"Bereit","color":"white"}
scoreboard objectives add isntready minecraft.dropped:minecraft.enchanted_book {"text":"Nicht Bereit","color":"white"}

scoreboard objectives add jointeamready dummy

scoreboard objectives add jointeamhotbar dummy

scoreboard objectives add jointeam dummy

function teams:empty
function teams:config
