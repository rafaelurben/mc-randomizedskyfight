#Scoreboard
scoreboard objectives add death deathCount {"text":"Tode","color":"dark_red"}

scoreboard objectives add game dummy {"text":"Randomized Skyfight","color":"green"}
scoreboard players set #resettimer game -1
scoreboard players set #game game 0

scoreboard objectives add gamesettings trigger



scoreboard objectives setdisplay sidebar



#Bossbars
bossbar add game:nexrandomitem {"text":"Nächstes Item","color":"gold"}
bossbar set game:nexrandomitem color yellow
bossbar set game:nexrandomitem visible false

# bossbar add game:nexrandomeffect {"text":"Nächster Effekt","color":"dark_green"}
# bossbar set game:nexrandomeffect color green
# bossbar set game:nexrandomeffect visible false
#
# bossbar add game:nexrandomspawn {"text":"Nächster Spawn","color":"red"}
# bossbar set game:nexrandomspawn color red
# bossbar set game:nexrandomspawn visible false
#
# bossbar add game:nexrandomstructure {"text":"Nächste Struktur","color":"light_purple"}
# bossbar set game:nexrandomstructure color purple
# bossbar set game:nexrandomstructure visible false



#Config
function game:config

#Message
tellraw @a ["",{"text":"Randomized Skyfight","color":"aqua"},{"text":" von "},{"text":"Rafael Urben","color":"green","clickEvent":{"action":"open_url","value":"https://fiverr.com/rafaelurben"},"hoverEvent":{"action":"show_text","value":"https://fiverr.com/rafaelurben"}},{"text":" und "},{"text":"MinimisPinguin","color":"green","clickEvent":{"action":"open_url","value":"https://twitter.com/minimispinguin"},"hoverEvent":{"action":"show_text","value":"https://twitter.com/minimispinguin"}},{"text":" wurde erfolgreich installiert!"}]
