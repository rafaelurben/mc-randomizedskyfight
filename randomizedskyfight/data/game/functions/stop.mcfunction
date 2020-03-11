execute as @a[tag=player,scores={game=1..}] run summon firework_rocket ~ ~3 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,6719955,15435844]}]}}}}

title @a times 10 100 10
title @a subtitle ["",{"text":"Gewinner: ","color":"green"},{"selector":"@a[tag=player,scores={game=1..}]"}]
title @a title ["",{"text":"Spiel Beendet","color":"red"}]

tellraw @a [""]
tellraw @a ["",{"text":"Spiel Beendet","color":"red"}]
tellraw @a [""]
tellraw @a ["",{"text":"Überlebende Spieler: ","color":"green"},{"selector":"@a[tag=player,scores={game=1..}]"}]
tellraw @a [""]
tellraw @a ["",{"text":"Vielen Dank für's Spielen des "},{"text":"Randomized Skyfight","color":"aqua"},{"text":" von "},{"text":"Rafael Urben","color":"green","clickEvent":{"action":"open_url","value":"https://fiverr.com/rafaelurben"},"hoverEvent":{"action":"show_text","value":"https://fiverr.com/rafaelurben"}},{"text":" und "},{"text":"MinimisPinguin","color":"green","clickEvent":{"action":"open_url","value":"https://twitter.com/minimispinguin"},"hoverEvent":{"action":"show_text","value":"https://twitter.com/minimispinguin"}}]
tellraw @a [""]



scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

scoreboard objectives remove game
scoreboard objectives add game dummy {"text":"Randomized Skyfight","color":"green"}

scoreboard players set #resettimer game 202


bossbar set game:nexrandomitem visible false
# bossbar set game:nexrandomeffect visible false
# bossbar set game:nexrandomspawn visible false
# bossbar set game:nexrandomstructure visible false


function teams:empty
function teams:config
function game:config

effect clear @a[tag=player]
clear @a[tag=player]

kill @e[tag=!game,type=!minecraft:player]
