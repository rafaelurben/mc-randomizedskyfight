replaceitem entity @s hotbar.0 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team1"]},display:{Name:'{"text":"Team 1","color":"aqua","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.1 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team2"]},display:{Name:'{"text":"Team 2","color":"black","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.2 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team3"]},display:{Name:'{"text":"Team 3","color":"blue","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.3 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team4"]},display:{Name:'{"text":"Team 4","color":"dark_aqua","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.4 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team5"]},display:{Name:'{"text":"Team 5","color":"dark_blue","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.5 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team6"]},display:{Name:'{"text":"Team 6","color":"dark_gray","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.6 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team7"]},display:{Name:'{"text":"Team 7","color":"dark_green","bold":true,"italic":false}'}} 1
replaceitem entity @s hotbar.7 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team8"]},display:{Name:'{"text":"Team 8","color":"dark_purple","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.0 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team9"]},display:{Name:'{"text":"Team 9","color":"dark_red","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.1 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team10"]},display:{Name:'{"text":"Team 10","color":"gold","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.2 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team11"]},display:{Name:'{"text":"Team 11","color":"gray","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.3 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team12"]},display:{Name:'{"text":"Team 12","color":"green","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.4 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team13"]},display:{Name:'{"text":"Team 13","color":"light_purple","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.5 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team14"]},display:{Name:'{"text":"Team 14","color":"red","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.6 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team15"]},display:{Name:'{"text":"Team 15","color":"white","bold":true,"italic":false}'}} 1
replaceitem entity @s inventory.7 minecraft:armor_stand{EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["game","spawn","team16"]},display:{Name:'{"text":"Team 16","color":"yellow","bold":true,"italic":false}'}} 1

tellraw @s ["",{"text":"Teamspawns: ","color":"gold"},{"text":"kill all","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=armor_stand,tag=game,tag=spawn]"}},{"text":" / ","color":"dark_red"},{"text":"kill near (5 blocks)","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=armor_stand,tag=game,tag=spawn,distance=..5]"}}]
