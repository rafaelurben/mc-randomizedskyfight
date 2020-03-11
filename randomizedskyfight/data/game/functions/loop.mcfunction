tag @a[tag=!player,tag=!builder] add player

#Teammanagement
execute if score #game game matches 1..300 run tag @a add teamteleport
execute if score #game game matches 1..300 run scoreboard players add #game game 1
execute unless score #game game matches -1.. run scoreboard players set #game game 0

#Bossbar
execute if score #game game matches 300.. run bossbar set game:nexrandomitem players @a
# execute if score #game game matches 300.. run bossbar set game:nexrandomeffect players @a
# execute if score #game game matches 300.. run bossbar set game:nexrandomspawn players @a
# execute if score #game game matches 300.. run bossbar set game:nexrandomstructure players @a


execute if score #game game matches 300.. if score #itemtimer game matches 1.. if score #item game matches 1 run scoreboard players remove #itemtimer game 1
execute if score #game game matches 300.. if score #itemtimer game matches 0 if score #item game matches 1 as @a[tag=player,scores={game=1..},team=!] run function game:events/randomitem
execute if score #game game matches 300.. if score #itemtimer game matches ..0 if score #item game matches 1 run scoreboard players operation #itemtimer game = #itemevent game

#execute if score #game game matches 300.. if score #itemtimer game matches 4.. if score #item game matches 1 run scoreboard players operation §eItem game = #itemtimer game
execute if score #game game matches 300.. store result bossbar game:nexrandomitem value if score #item game matches 1 run scoreboard players get #itemtimer game


execute if score #game game matches 300.. if score #effecttimer game matches 1.. if score #effect game matches 1 run scoreboard players remove #effecttimer game 1
execute if score #game game matches 300.. if score #effecttimer game matches 0 if score #effect game matches 1 as @r[tag=player,team=!,gamemode=survival] run function game:events/randomeffect
execute if score #game game matches 300.. if score #effecttimer game matches ..0 if score #effect game matches 1 run scoreboard players operation #effecttimer game = #effectevent game

execute if score #game game matches 300.. if score #effecttimer game > #lifes game if score #effect game matches 1 run scoreboard players operation §eEffect game = #effecttimer game
# execute if score #game game matches 300.. store result bossbar game:nexrandomeffect value if score #effect game matches 1 run scoreboard players get #effecttimer game


execute if score #game game matches 300.. if score #spawntimer game matches 1.. if score #spawn game matches 1 run scoreboard players remove #spawntimer game 1
execute if score #game game matches 300.. if score #spawntimer game matches 0 if score #spawn game matches 1 as @e[tag=spawner,limit=1,sort=random] run function game:events/randomspawn
execute if score #game game matches 300.. if score #spawntimer game matches ..0 if score #spawn game matches 1 run scoreboard players operation #spawntimer game = #spawnevent game

execute if score #game game matches 300.. if score #spawntimer game > #lifes game if score #spawn game matches 1 run scoreboard players operation §eSpawn game = #spawntimer game
# execute if score #game game matches 300.. store result bossbar game:nexrandomspawn value if score #spawn game matches 1 run scoreboard players get #spawntimer game


execute if score #game game matches 300.. if score #structuretimer game matches 1.. if score #structure game matches 1 run scoreboard players remove #structuretimer game 1
execute if score #game game matches 300.. if score #structuretimer game matches 0 if score #structure game matches 1 as @e[tag=structurespawner,tag=active,limit=1,sort=random] run function game:events/randomstructure
execute if score #game game matches 300.. if score #structuretimer game matches ..0 if score #structure game matches 1 run scoreboard players operation #structuretimer game = #structureevent game

execute if score #game game matches 300.. if score #structuretimer game > #lifes game if score #structure game matches 1 run scoreboard players operation §eStructure game = #structuretimer game
# execute if score #game game matches 300.. store result bossbar game:nexrandomstructure value if score #structure game matches 1 run scoreboard players get #structuretimer game


execute if score #game game matches 300.. if score #playerswitchtimer game matches 1.. if score #playerswitch game matches 1 run scoreboard players remove #playerswitchtimer game 1
execute if score #game game matches 300.. if score #playerswitchtimer game matches 0 if score #playerswitch game matches 1 as @r run function game:events/randomplayerswitch
execute if score #game game matches 300.. if score #playerswitchtimer game matches ..0 if score #playerswitch game matches 1 run scoreboard players operation #playerswitchtimer game = #playerswitchevent game

execute if score #game game matches 300.. if score #playerswitchtimer game > #lifes game if score #playerswitch game matches 1 run scoreboard players operation §ePlayerswitch game = #playerswitchtimer game


#Tode und Leben
execute if score #game game matches 1.. as @a[tag=player,team=!] run scoreboard players operation @s game = #lifes game
execute if score #game game matches 1.. as @a[tag=player,team=!] run scoreboard players operation @s game -= @s death

#Gamemode
execute if score #game game matches 300.. run gamemode spectator @a[tag=player,team=!,gamemode=!spectator,scores={game=0}]
execute if score #game game matches 300.. run gamemode survival @a[tag=player,team=!,gamemode=!survival,scores={game=1..}]
execute unless score #game game matches 300.. run gamemode adventure @a[tag=player,gamemode=!adventure]

#start
execute if score #starttimer game matches 198 as @a[tag=player] run playsound minecraft:music_disc.mellohi master @s ~ ~ ~ 1
execute unless score #starttimer game matches 1.. run stopsound @a * minecraft:music_disc.mellohi
execute unless score #game game matches 1.. if score #starttimer game matches 0 run function game:start
execute unless score #game game matches 1.. if score #starttimer game matches 0.. run scoreboard players remove #starttimer game 1

#Settings
execute as @a[scores={gamesettings=1..}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5

execute as @a[scores={gamesettings=10}] run tellraw @s ["",{"text":"Ersteller des "},{"text":"Randomized Skyfight","color":"aqua"},{"text":": "},{"text":"Rafael Urben (Entwicklung)","color":"green","clickEvent":{"action":"open_url","value":"https://fiverr.com/rafaelurben"},"hoverEvent":{"action":"show_text","value":"https://fiverr.com/rafaelurben"}}]
execute as @a[scores={gamesettings=11}] run tellraw @s ["",{"text":"Ersteller des "},{"text":"Randomized Skyfight","color":"aqua"},{"text":": "},{"text":"MinimisPinguin (Idee)","color":"green","clickEvent":{"action":"open_url","value":"https://twitter.com/minimispinguin"},"hoverEvent":{"action":"show_text","value":"https://twitter.com/minimispinguin"}}]

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=80}] if score #specialmode game matches 2 run scoreboard players set #specialmode game 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=80}] if score #specialmode game matches 1 run scoreboard players set #specialmode game 2
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=81}] if score #specialmode game matches 0 run scoreboard players set #specialmode game 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=90}] if score #starttimer game matches 0.. run scoreboard players reset #starttimer game
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=91}] unless score #starttimer game matches 0.. run scoreboard players set #starttimer game 200

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=100}] if score #gamemode jointeam matches 5 run scoreboard players set #gamemode jointeam 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=100}] if score #gamemode jointeam matches 4 run scoreboard players set #gamemode jointeam 5
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=100}] if score #gamemode jointeam matches 3 run scoreboard players set #gamemode jointeam 4
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=100}] if score #gamemode jointeam matches 2 run scoreboard players set #gamemode jointeam 3
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=100}] if score #gamemode jointeam matches 1 run scoreboard players set #gamemode jointeam 2
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=101}] if score #gamemode jointeam matches 0 run scoreboard players set #gamemode jointeam 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=110}] if score #item game matches 1 if score #itemevent game matches 200 run scoreboard players set #item game 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=110}] if score #item game matches 1 if score #itemevent game matches 100 run scoreboard players set #itemevent game 200
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=110}] if score #item game matches 1 if score #itemevent game matches 50 run scoreboard players set #itemevent game 100
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=111}] if score #item game matches 0 run scoreboard players set #itemevent game 50
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=111}] if score #item game matches 0 run scoreboard players set #item game 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=120}] if score #effect game matches 1 if score #effectevent game matches 500 run scoreboard players set #effect game 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=120}] if score #effect game matches 1 if score #effectevent game matches 200 run scoreboard players set #effectevent game 500
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=120}] if score #effect game matches 1 if score #effectevent game matches 100 run scoreboard players set #effectevent game 200
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=121}] if score #effect game matches 0 run scoreboard players set #effectevent game 100
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=121}] if score #effect game matches 0 run scoreboard players set #effect game 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=130}] if score #spawn game matches 1 if score #spawnevent game matches 200 run scoreboard players set #spawn game 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=130}] if score #spawn game matches 1 if score #spawnevent game matches 150 run scoreboard players set #spawnevent game 200
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=130}] if score #spawn game matches 1 if score #spawnevent game matches 100 run scoreboard players set #spawnevent game 150
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=131}] if score #spawn game matches 0 run scoreboard players set #spawnevent game 100
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=131}] if score #spawn game matches 0 run scoreboard players set #spawn game 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=140}] if score #structure game matches 1 if score #structureevent game matches 2000 run scoreboard players set #structure game 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=140}] if score #structure game matches 1 if score #structureevent game matches 1500 run scoreboard players set #structureevent game 2000
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=140}] if score #structure game matches 1 if score #structureevent game matches 1000 run scoreboard players set #structureevent game 1500
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=141}] if score #structure game matches 0 run scoreboard players set #structureevent game 1000
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=141}] if score #structure game matches 0 run scoreboard players set #structure game 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=150}] if score #playerswitch game matches 1 if score #playerswitchevent game matches 4000 run scoreboard players set #playerswitch game 0
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=150}] if score #playerswitch game matches 1 if score #playerswitchevent game matches 3000 run scoreboard players set #playerswitchevent game 4000
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=150}] if score #playerswitch game matches 1 if score #playerswitchevent game matches 2000 run scoreboard players set #playerswitchevent game 3000
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=151}] if score #playerswitch game matches 0 run scoreboard players set #playerswitchevent game 2000
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=151}] if score #playerswitch game matches 0 run scoreboard players set #playerswitch game 1

execute unless score #game game matches 1.. if entity @a[scores={gamesettings=160}] if score #lifes game matches 5 run scoreboard players set #lifes game 6
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=160}] if score #lifes game matches 4 run scoreboard players set #lifes game 5
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=160}] if score #lifes game matches 3 run scoreboard players set #lifes game 4
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=160}] if score #lifes game matches 2 run scoreboard players set #lifes game 3
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=160}] if score #lifes game matches 1 run scoreboard players set #lifes game 2
execute unless score #game game matches 1.. if entity @a[scores={gamesettings=161}] if score #lifes game matches 6 run scoreboard players set #lifes game 1

scoreboard players reset @a[scores={gamesettings=0..}] gamesettings
execute unless score #game game matches 1.. run scoreboard players enable @a[tag=player] gamesettings

fill 4 89 1 4 91 -1 minecraft:air
execute unless score #game game matches 1.. if score #specialmode game matches 2 run setblock 4 89 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Spezialmodus","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 80"}}]',Text4:'[{"text":"OP","color":"aqua","bold":false}]'}
execute unless score #game game matches 1.. if score #specialmode game matches 1 run setblock 4 89 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Spezialmodus","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 80"}}]',Text4:'[{"text":"Hardcore","color":"aqua","bold":false}]'}
execute unless score #game game matches 1.. if score #specialmode game matches 0 run setblock 4 89 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Spezialmodus","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Deaktiviert","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 81"}}]',Text4:'[{"text":"Normal","color":"aqua","bold":false}]'}
execute unless score #game game matches 1.. if score #starttimer game matches 0.. run setblock 4 90 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Spiel starten","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Wird gestartet...","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 90"}}]',Text4:'[{"text":"Noch ","color":"aqua","bold":false},{"score":{"name":"#starttimer","objective":"game"},"bold":true,"color":"aqua"},{"text":" Ticks","color":"aqua","bold":false}]'}
execute unless score #game game matches 1.. unless score #starttimer game matches 0.. run setblock 4 90 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Spiel starten","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Spiel starten","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 91"}}]'}
execute unless score #game game matches 1.. if score #gamemode jointeam matches 1.. run setblock 4 91 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Teamzuteilung","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Automatisch","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 100"}}]',Text4:'[{"score":{"name":"#gamemode","objective":"jointeam"},"bold":true,"color":"aqua"},{"text":" Sp./Team","color":"aqua","bold":false}]'}
execute unless score #game game matches 1.. if score #gamemode jointeam matches 0 run setblock 4 91 0 oak_wall_sign[facing=west]{Text1:'[{"text":"Teamzuteilung","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Manuell","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 101"}}]',Text4:'[{"text":"Max ","color":"aqua"},{"score":{"name":"#maxPlayers","objective":"jointeam"},"bold":true,"color":"aqua"},{"text":" Sp./Team","color":"aqua","bold":false}]'}

fill -4 89 1 -4 91 -1 minecraft:air
execute unless score #game game matches 1.. if score #item game matches 1 run setblock -4 89 -1 oak_wall_sign[facing=east]{Text1:'[{"text":"Items","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 110"}}]',Text4:'[{"score":{"name":"#itemevent","objective":"game"},"bold":true,"color":"aqua"},{"text":" ms","color":"aqua"}]'}
execute unless score #game game matches 1.. if score #item game matches 0 run setblock -4 89 -1 oak_wall_sign[facing=east]{Text1:'[{"text":"Items","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Deaktiviert","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 111"}}]'}
execute unless score #game game matches 1.. if score #effect game matches 1 run setblock -4 89 0 oak_wall_sign[facing=east]{Text1:'[{"text":"Effekte","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 120"}}]',Text4:'[{"score":{"name":"#effectevent","objective":"game"},"bold":true,"color":"aqua"},{"text":" ms","color":"aqua"}]'}
execute unless score #game game matches 1.. if score #effect game matches 0 run setblock -4 89 0 oak_wall_sign[facing=east]{Text1:'[{"text":"Effekte","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Deaktiviert","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 121"}}]'}
execute unless score #game game matches 1.. if score #spawn game matches 1 run setblock -4 89 1 oak_wall_sign[facing=east]{Text1:'[{"text":"Mobs","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 130"}}]',Text4:'[{"score":{"name":"#spawnevent","objective":"game"},"bold":true,"color":"aqua"},{"text":" ms","color":"aqua"}]'}
execute unless score #game game matches 1.. if score #spawn game matches 0 run setblock -4 89 1 oak_wall_sign[facing=east]{Text1:'[{"text":"Mobs","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Deaktiviert","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 131"}}]'}
execute unless score #game game matches 1.. if score #structure game matches 1 run setblock -4 90 -1 oak_wall_sign[facing=east]{Text1:'[{"text":"Strukturen","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 140"}}]',Text4:'[{"score":{"name":"#structureevent","objective":"game"},"bold":true,"color":"aqua"},{"text":" ms","color":"aqua"}]'}
execute unless score #game game matches 1.. if score #structure game matches 0 run setblock -4 90 -1 oak_wall_sign[facing=east]{Text1:'[{"text":"Strukturen","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Deaktiviert","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 141"}}]'}
execute unless score #game game matches 1.. if score #playerswitch game matches 1 run setblock -4 90 0 oak_wall_sign[facing=east]{Text1:'[{"text":"Playerswitch","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Aktiviert","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 150"}}]',Text4:'[{"score":{"name":"#playerswitchevent","objective":"game"},"bold":true,"color":"aqua"},{"text":" ms","color":"aqua"}]'}
execute unless score #game game matches 1.. if score #playerswitch game matches 0 run setblock -4 90 0 oak_wall_sign[facing=east]{Text1:'[{"text":"Playerswitch","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Deaktiviert","color":"red","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 151"}}]'}
execute unless score #game game matches 1.. if score #lifes game matches 1..5 run setblock -4 90 1 oak_wall_sign[facing=east]{Text1:'[{"text":"Leben","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Anzahl","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 160"}}]',Text4:'[{"score":{"name":"#lifes","objective":"game"},"bold":true,"color":"aqua"},{"text":" Leben","color":"aqua","bold":false}]'}
execute unless score #game game matches 1.. if score #lifes game matches 6 run setblock -4 90 1 oak_wall_sign[facing=east]{Text1:'[{"text":"Leben","color":"gold"}]',Text2:'[{"text":"==========="}]',Text3:'[{"text":"Anzahl","color":"green","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 161"}}]',Text4:'[{"score":{"name":"#lifes","objective":"game"},"bold":true,"color":"aqua"},{"text":" Leben","color":"aqua","bold":false}]'}




#Intro
execute if score #game game matches 2 as @a[tag=player,team=!] at @s run stopsound @s
execute if score #game game matches 2 as @a[tag=player,team=!] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0
execute if score #game game matches 2 as @a[tag=player,team=!] at @s run title @s times 10 70 15
execute if score #game game matches 2 as @a[tag=player,team=!] at @s run title @s subtitle [{"text":"Wach auf, ","color":"red"},{"selector":"@s","color":"gold"}]
execute if score #game game matches 2 as @a[tag=player,team=!] at @s run title @s title [{"text":"Es geht gleich los!","color":"green"}]

execute if score #game game matches 98 as @a[tag=player,team=!] at @s run title @s reset
execute if score #game game matches 100 as @a[tag=player,team=!] at @s run title @s times 0 3 10
execute if score #game game matches 100 as @a[tag=player,team=!] at @s run title @s title [{"text":"10","color":"red"}]
execute if score #game game matches 100 as @a[tag=player,team=!] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score #game game matches 200 as @a[tag=player,team=!] at @s run title @s title [{"text":"5","color":"red"}]
execute if score #game game matches 200 as @a[tag=player,team=!] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score #game game matches 220 as @a[tag=player,team=!] at @s run title @s title [{"text":"4","color":"red"}]
execute if score #game game matches 220 as @a[tag=player,team=!] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score #game game matches 240 as @a[tag=player,team=!] at @s run title @s title [{"text":"3","color":"red"}]
execute if score #game game matches 240 as @a[tag=player,team=!] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score #game game matches 260 as @a[tag=player,team=!] at @s run title @s title [{"text":"2","color":"red"}]
execute if score #game game matches 260 as @a[tag=player,team=!] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score #game game matches 280 as @a[tag=player,team=!] at @s run title @s title [{"text":"1","color":"red"}]
execute if score #game game matches 280 as @a[tag=player,team=!] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

execute if score #game game matches 300 as @a[tag=player,team=!] at @s run title @s times 10 70 20
execute if score #game game matches 300 as @a[tag=player,team=!] at @s run title @s subtitle [{"text":"Und nun viel Spass!","color":"gold"}]
execute if score #game game matches 300 as @a[tag=player,team=!] at @s run title @s title [{"text":"Los geht's!","color":"green"}]
execute if score #game game matches 300 as @a[tag=player,team=!] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0
execute if score #game game matches 300 as @a[tag=player,team=!] at @s run summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,6719955,15435844]}]}}}}
execute if score #game game matches 300 as @a[tag=player,team=!] at @s run loot give @s loot game:startequipement
execute if score #game game matches 300 run scoreboard objectives setdisplay sidebar game
execute if score #game game matches 300 run scoreboard objectives setdisplay list death

#Teams
execute unless score #game game matches 1.. run tag @a[tag=player] add jointeam
execute if score #game game matches 1.. run tag @a[tag=jointeam] remove jointeam
tag @a[tag=jointeam,tag=builder] remove jointeam

#Ende
execute if score #game game matches 1.. if entity @a[tag=player,team=1,scores={game=1..}] unless entity @a[tag=player,team=!1,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=2,scores={game=1..}] unless entity @a[tag=player,team=!2,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=3,scores={game=1..}] unless entity @a[tag=player,team=!3,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=4,scores={game=1..}] unless entity @a[tag=player,team=!4,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=5,scores={game=1..}] unless entity @a[tag=player,team=!5,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=6,scores={game=1..}] unless entity @a[tag=player,team=!6,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=7,scores={game=1..}] unless entity @a[tag=player,team=!7,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=8,scores={game=1..}] unless entity @a[tag=player,team=!8,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=9,scores={game=1..}] unless entity @a[tag=player,team=!9,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=10,scores={game=1..}] unless entity @a[tag=player,team=!10,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=11,scores={game=1..}] unless entity @a[tag=player,team=!11,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=12,scores={game=1..}] unless entity @a[tag=player,team=!12,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=13,scores={game=1..}] unless entity @a[tag=player,team=!13,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=14,scores={game=1..}] unless entity @a[tag=player,team=!14,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=15,scores={game=1..}] unless entity @a[tag=player,team=!15,scores={game=1..}] run scoreboard players set #end game 1
execute if score #game game matches 1.. if entity @a[tag=player,team=16,scores={game=1..}] unless entity @a[tag=player,team=!16,scores={game=1..}] run scoreboard players set #end game 1

execute if score #end game matches 1 run function game:stop



#Reset
execute if score #resettimer game matches 0.. run scoreboard players remove #resettimer game 1
execute if score #resettimer game matches 200 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"10","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 180 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"9","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 160 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"8","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 140 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"7","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 120 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"6","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 100 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"5","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 80 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"4","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 60 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"3","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 40 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"2","color":"dark_red"},{"text":" Sekunden!","color":"red"}]
execute if score #resettimer game matches 20 run tellraw @a ["",{"text":"Mapreset in ","color":"red"},{"text":"1","color":"dark_red"},{"text":" Sekunde!","color":"red"}]
execute if score #resettimer game matches 0 run function game:map/startreset



#Luckyblock
execute as @e[tag=LuckyBlock] at @s run function game:events/randomevent
