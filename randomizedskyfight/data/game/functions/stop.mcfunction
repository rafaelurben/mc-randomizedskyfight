scoreboard objectives remove game
scoreboard objectives add game dummy {"text":"Randomized Skyfight","color":"green"}

scoreboard players set #resettimer game 202

scoreboard objectives setdisplay sidebar

#Bossbars

bossbar set game:nexrandomitem visible false
# bossbar set game:nexrandomeffect visible false
# bossbar set game:nexrandomspawn visible false
# bossbar set game:nexrandomstructure visible false


#Function
function teams:empty
function teams:config
function game:config

effect clear @a[tag=player]
clear @a[tag=player]

kill @e[tag=!game,type=!minecraft:player,type=!minecraft:item_frame]


#Message
tellraw @a [""]
tellraw @a ["",{"text":"Vielen Dank für's Spielen des "},{"text":"Randomized Skyfight","color":"aqua"},{"text":" von "},{"text":"Rafael Urben","color":"green","clickEvent":{"action":"open_url","value":"https://fiverr.com/rafaelurben"},"hoverEvent":{"action":"show_text","value":"https://fiverr.com/rafaelurben"}},{"text":" und "},{"text":"MinimisPinguin","color":"green","clickEvent":{"action":"open_url","value":"https://twitter.com/minimispinguin"},"hoverEvent":{"action":"show_text","value":"https://twitter.com/minimispinguin"}}]
tellraw @a [""]
