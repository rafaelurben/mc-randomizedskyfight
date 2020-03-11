# Spielmodus
function teams:go

#Prepare Structures
tag @e[tag=structurespawner] add active

#Bossbars
execute store result bossbar game:nexrandomitem max run scoreboard players get #itemevent game
bossbar set game:nexrandomitem visible true
# execute store result bossbar game:nexrandomeffect max run scoreboard players get #effectevent game
# bossbar set game:nexrandomeffect visible true
# execute store result bossbar game:nexrandomspawn max run scoreboard players get #spawnevent game
# bossbar set game:nexrandomspawn visible true
# execute store result bossbar game:nexrandomstructure max run scoreboard players get #structureevent game
# bossbar set game:nexrandomstructure visible true

# Scoreboard
scoreboard objectives remove gamesettings
scoreboard objectives add gamesettings trigger

scoreboard players set #game game 1


scoreboard players set #itemtimer game -1
scoreboard players set #effecttimer game -1
scoreboard players set #spawntimer game -1
scoreboard players set #structuretimer game -1
scoreboard players set #playerswitchtimer game -1


scoreboard players reset @a[tag=player] death


# Players
clear @a[tag=player,team=!]
effect clear @a[tag=player,team=!]
effect give @a[tag=player,team=!] minecraft:regeneration 10 5 true
effect give @a[tag=player,team=!] minecraft:saturation 10 5 true

# Gamerules
execute if score #specialmode game matches 1 run gamerule naturalRegeneration false
execute unless score #specialmode game matches 1 run gamerule naturalRegeneration true
