#Startline
tellraw @s [{"text":""}]
tellraw @s [{"text":"----- BUILD COMMANDS -----","bold":true,"color":"gold"}]


#Structurespawner
tellraw @s ["",{"text":"| ","bold":true,"color":"gold"},{"text":"Structurespawner: "},{"text":"spawn","color":"gold","clickEvent":{"action":"run_command","value":"/function game:build/structurespawner"}},{"text":" | "},{"text":"kill all","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=armor_stand,tag=game,tag=structurespawner]"}},{"text":" | "},{"text":"kill near (5 blocks)","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=armor_stand,tag=game,tag=structurespawner,distance=..5]"}}]
#Teams
tellraw @s ["",{"text":"| ","bold":true,"color":"gold"},{"text":"Teams: "},{"text":"show commands","color":"gold","clickEvent":{"action":"run_command","value":"/function teams:build"}}]
#Build
tellraw @s ["",{"text":"| ","bold":true,"color":"gold"},{"text":"Build Mode: "},{"text":"leave","color":"aqua","clickEvent":{"action":"run_command","value":"/function game:build/leave"}},{"text":" | "},{"text":"enter","color":"blue","clickEvent":{"action":"run_command","value":"/function game:build/enter"}}]


#Endline
tellraw @s [{"text":"----- BUILD COMMANDS -----","bold":true,"color":"gold"}]
tellraw @s [{"text":""}]
