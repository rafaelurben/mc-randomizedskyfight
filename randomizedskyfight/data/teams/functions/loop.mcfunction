# Score
execute as @a[tag=jointeam] unless score @s jointeamhotbar matches 1.. run scoreboard players set @s jointeamhotbar 1
execute as @a[tag=jointeam] unless score @s jointeamready matches 0.. run scoreboard players set @s jointeamready 0
execute as @a[tag=!jointeam] if score @s jointeamready matches 0.. run scoreboard players reset @s jointeamready

# Hotbarswitch
execute as @a[tag=jointeam,scores={jointeamhotbar=1},nbt={Inventory:[{Slot:-106b}]}] run scoreboard players set @s jointeamhotbar -2
execute as @a[tag=jointeam,scores={jointeamhotbar=2},nbt={Inventory:[{Slot:-106b}]}] run scoreboard players set @s jointeamhotbar -1
execute as @a[tag=jointeam,scores={jointeamhotbar=..0},nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand air
execute as @a[tag=jointeam,scores={jointeamhotbar=-1}] run scoreboard players set @s jointeamhotbar 1
execute as @a[tag=jointeam,scores={jointeamhotbar=-2}] run scoreboard players set @s jointeamhotbar 2

# Manueller Teamjoin
execute if score #gamemode jointeam matches 0 if score #players jointeam1 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam1=1..}] run team join 1 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam2 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam2=1..}] run team join 2 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam3 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam3=1..}] run team join 3 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam4 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam4=1..}] run team join 4 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam5 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam5=1..}] run team join 5 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam6 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam6=1..}] run team join 6 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam7 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam7=1..}] run team join 7 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam8 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam8=1..}] run team join 8 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam9 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam9=1..}] run team join 9 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam10 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam10=1..}] run team join 10 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam11 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam11=1..}] run team join 11 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam12 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam12=1..}] run team join 12 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam13 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam13=1..}] run team join 13 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam14 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam14=1..}] run team join 14 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam15 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam15=1..}] run team join 15 @s
execute if score #gamemode jointeam matches 0 if score #players jointeam16 < #maxPlayers jointeam as @a[tag=jointeam,scores={jointeam16=1..}] run team join 16 @s

# Bereit / Nicht bereit Auswahl
execute if score #gamemode jointeam matches 0 as @a[tag=jointeam,scores={isready=1..}] run scoreboard players set @s jointeamready 1
execute if score #gamemode jointeam matches 0 as @a[tag=jointeam,scores={isntready=1..}] run team leave @s
execute if score #gamemode jointeam matches 0 as @a[tag=jointeam,scores={isntready=1..}] run scoreboard players set @s jointeamready 0

# Score resets
execute as @a[tag=jointeam,scores={jointeam1=1..}] run scoreboard players reset @s jointeam1
execute as @a[tag=jointeam,scores={jointeam2=1..}] run scoreboard players reset @s jointeam2
execute as @a[tag=jointeam,scores={jointeam3=1..}] run scoreboard players reset @s jointeam3
execute as @a[tag=jointeam,scores={jointeam4=1..}] run scoreboard players reset @s jointeam4
execute as @a[tag=jointeam,scores={jointeam5=1..}] run scoreboard players reset @s jointeam5
execute as @a[tag=jointeam,scores={jointeam6=1..}] run scoreboard players reset @s jointeam6
execute as @a[tag=jointeam,scores={jointeam7=1..}] run scoreboard players reset @s jointeam7
execute as @a[tag=jointeam,scores={jointeam8=1..}] run scoreboard players reset @s jointeam8
execute as @a[tag=jointeam,scores={jointeam9=1..}] run scoreboard players reset @s jointeam9
execute as @a[tag=jointeam,scores={jointeam10=1..}] run scoreboard players reset @s jointeam10
execute as @a[tag=jointeam,scores={jointeam11=1..}] run scoreboard players reset @s jointeam11
execute as @a[tag=jointeam,scores={jointeam12=1..}] run scoreboard players reset @s jointeam12
execute as @a[tag=jointeam,scores={jointeam13=1..}] run scoreboard players reset @s jointeam13
execute as @a[tag=jointeam,scores={jointeam14=1..}] run scoreboard players reset @s jointeam14
execute as @a[tag=jointeam,scores={jointeam15=1..}] run scoreboard players reset @s jointeam15
execute as @a[tag=jointeam,scores={jointeam16=1..}] run scoreboard players reset @s jointeam16

execute as @a[tag=jointeam,scores={isready=1..}] run scoreboard players reset @s isready
execute as @a[tag=jointeam,scores={isntready=1..}] run scoreboard players reset @s isntready


#Scoreboard Spieleranzahl berechnen
execute store result score #players jointeam1 run execute if entity @a[tag=jointeam,team=1]
execute store result score #players jointeam2 run execute if entity @a[tag=jointeam,team=2]
execute store result score #players jointeam3 run execute if entity @a[tag=jointeam,team=3]
execute store result score #players jointeam4 run execute if entity @a[tag=jointeam,team=4]
execute store result score #players jointeam5 run execute if entity @a[tag=jointeam,team=5]
execute store result score #players jointeam6 run execute if entity @a[tag=jointeam,team=6]
execute store result score #players jointeam7 run execute if entity @a[tag=jointeam,team=7]
execute store result score #players jointeam8 run execute if entity @a[tag=jointeam,team=8]
execute store result score #players jointeam9 run execute if entity @a[tag=jointeam,team=9]
execute store result score #players jointeam10 run execute if entity @a[tag=jointeam,team=10]
execute store result score #players jointeam11 run execute if entity @a[tag=jointeam,team=11]
execute store result score #players jointeam12 run execute if entity @a[tag=jointeam,team=12]
execute store result score #players jointeam13 run execute if entity @a[tag=jointeam,team=13]
execute store result score #players jointeam14 run execute if entity @a[tag=jointeam,team=14]
execute store result score #players jointeam15 run execute if entity @a[tag=jointeam,team=15]
execute store result score #players jointeam16 run execute if entity @a[tag=jointeam,team=16]
execute store result score #readyplayers jointeamready run execute if entity @a[tag=jointeam,scores={jointeamready=1},team=!]
execute store result score #allplayers jointeamready run execute if entity @a[tag=jointeam]


# Inventaritems
execute if score #gamemode jointeam matches 0 if score #players jointeam1 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!1] hotbar.0 minecraft:light_blue_wool{display:{Name:'{"text":"Team 1","color":"aqua","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam2 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!2] hotbar.1 minecraft:black_wool{display:{Name:'{"text":"Team 2","color":"black","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam3 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!3] hotbar.2 minecraft:blue_wool{display:{Name:'{"text":"Team 3","color":"blue","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam4 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!4] hotbar.3 minecraft:cyan_wool{display:{Name:'{"text":"Team 4","color":"dark_aqua","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam5 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!5] hotbar.4 minecraft:brown_wool{display:{Name:'{"text":"Team 5","color":"dark_blue","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam6 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!6] hotbar.5 minecraft:gray_wool{display:{Name:'{"text":"Team 6","color":"dark_gray","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam7 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!7] hotbar.6 minecraft:green_wool{display:{Name:'{"text":"Team 7","color":"dark_green","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam8 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!8] hotbar.7 minecraft:purple_wool{display:{Name:'{"text":"Team 8","color":"dark_purple","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam9 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!9] hotbar.0 minecraft:red_wool{display:{Name:'{"text":"Team 9","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam10 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!10] hotbar.1 minecraft:orange_wool{display:{Name:'{"text":"Team 10","color":"gold","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam11 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!11] hotbar.2 minecraft:light_gray_wool{display:{Name:'{"text":"Team 11","color":"gray","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam12 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!12] hotbar.3 minecraft:lime_wool{display:{Name:'{"text":"Team 12","color":"green","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam13 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!13] hotbar.4 minecraft:magenta_wool{display:{Name:'{"text":"Team 13","color":"light_purple","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam14 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!14] hotbar.5 minecraft:pink_wool{display:{Name:'{"text":"Team 14","color":"red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam15 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!15] hotbar.6 minecraft:white_wool{display:{Name:'{"text":"Team 15","color":"white","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 if score #players jointeam16 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!16] hotbar.7 minecraft:yellow_wool{display:{Name:'{"text":"Team 16","color":"yellow","bold":false,"italic":false}'},CustomModelData:1} 1

execute if score #gamemode jointeam matches 0 unless score #players jointeam1 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!1] hotbar.0 minecraft:barrier{display:{Name:'{"text":"Team 1 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam2 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!2] hotbar.1 minecraft:barrier{display:{Name:'{"text":"Team 2 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam3 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!3] hotbar.2 minecraft:barrier{display:{Name:'{"text":"Team 3 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam4 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!4] hotbar.3 minecraft:barrier{display:{Name:'{"text":"Team 4 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam5 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!5] hotbar.4 minecraft:barrier{display:{Name:'{"text":"Team 5 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam6 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!6] hotbar.5 minecraft:barrier{display:{Name:'{"text":"Team 6 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam7 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!7] hotbar.6 minecraft:barrier{display:{Name:'{"text":"Team 7 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam8 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=!8] hotbar.7 minecraft:barrier{display:{Name:'{"text":"Team 8 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam9 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!9] hotbar.0 minecraft:barrier{display:{Name:'{"text":"Team 9 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam10 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!10] hotbar.1 minecraft:barrier{display:{Name:'{"text":"Team 10 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam11 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!11] hotbar.2 minecraft:barrier{display:{Name:'{"text":"Team 11 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam12 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!12] hotbar.3 minecraft:barrier{display:{Name:'{"text":"Team 12 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam13 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!13] hotbar.4 minecraft:barrier{display:{Name:'{"text":"Team 13 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam14 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!14] hotbar.5 minecraft:barrier{display:{Name:'{"text":"Team 14 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam15 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!15] hotbar.6 minecraft:barrier{display:{Name:'{"text":"Team 15 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 unless score #players jointeam16 < #maxPlayers jointeam run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=!16] hotbar.7 minecraft:barrier{display:{Name:'{"text":"Team 16 - voll","color":"dark_red","bold":false,"italic":false}'},CustomModelData:1} 1

execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=1] hotbar.0 minecraft:light_blue_stained_glass_pane{display:{Name:'{"text":"Team 1","color":"aqua","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=2] hotbar.1 minecraft:black_stained_glass_pane{display:{Name:'{"text":"Team 2","color":"black","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=3] hotbar.2 minecraft:blue_stained_glass_pane{display:{Name:'{"text":"Team 3","color":"blue","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=4] hotbar.3 minecraft:cyan_stained_glass_pane{display:{Name:'{"text":"Team 4","color":"dark_aqua","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=5] hotbar.4 minecraft:brown_stained_glass_pane{display:{Name:'{"text":"Team 5","color":"dark_blue","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=6] hotbar.5 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"Team 6","color":"dark_gray","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=7] hotbar.6 minecraft:green_stained_glass_pane{display:{Name:'{"text":"Team 7","color":"dark_green","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=1},tag=jointeam,team=8] hotbar.7 minecraft:purple_stained_glass_pane{display:{Name:'{"text":"Team 8","color":"dark_purple","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=9] hotbar.0 minecraft:red_stained_glass_pane{display:{Name:'{"text":"Team 9","color":"darl_red","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=10] hotbar.1 minecraft:orange_stained_glass_pane{display:{Name:'{"text":"Team 10","color":"gold","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=11] hotbar.2 minecraft:light_gray_stained_glass_pane{display:{Name:'{"text":"Team 11","color":"gray","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=12] hotbar.3 minecraft:lime_stained_glass_pane{display:{Name:'{"text":"Team 12","color":"green","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=13] hotbar.4 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":"Team 13","color":"light_purple","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=14] hotbar.5 minecraft:pink_stained_glass_pane{display:{Name:'{"text":"Team 14","color":"red","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=15] hotbar.6 minecraft:white_stained_glass_pane{display:{Name:'{"text":"Team 15","color":"white","bold":true,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamhotbar=2},tag=jointeam,team=16] hotbar.7 minecraft:yellow_stained_glass_pane{display:{Name:'{"text":"Team 16","color":"yellow","bold":true,"italic":false}'},CustomModelData:1} 1

execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamready=0},tag=jointeam] hotbar.8 minecraft:book{display:{Name:'{"text":"Nicht bereit","color":"red","bold":false,"italic":false}'},CustomModelData:1} 1
execute if score #gamemode jointeam matches 0 run replaceitem entity @a[scores={jointeamready=1},tag=jointeam] hotbar.8 minecraft:enchanted_book{display:{Name:'{"text":"Bereit","color":"grees","bold":true,"italic":false}'},CustomModelData:1} 1


# Items killen
execute if score #gamemode jointeam matches 0 at @a[tag=jointeam] run kill @e[type=item,distance=..3]
execute unless score #gamemode jointeam matches 0 run clear @a[tag=jointeam]

#Actionbar
execute if score #gamemode jointeam matches 0 run title @a[tag=jointeam] actionbar ["",{"text":"Spieler: "},{"score":{"name":"#players","objective":"jointeam1"},"color":"aqua"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam2"},"color":"black"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam3"},"color":"blue"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam4"},"color":"dark_aqua"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam5"},"color":"dark_blue"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam6"},"color":"dark_gray"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam7"},"color":"dark_green"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam8"},"color":"dark_purple"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam9"},"color":"dark_red"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam10"},"color":"gold"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam11"},"color":"gray"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam12"},"color":"green"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam13"},"color":"light_purple"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam14"},"color":"red"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam15"},"color":"white"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam16"},"color":"yellow"},{"text":"   Bereit: "},{"score":{"name":"#readyplayers","objective":"jointeamready"}},{"text":"/"},{"score":{"name":"#allplayers","objective":"jointeamready"}},{"text":" OK: "},{"keybind":"key.drop"},{"text":" Weiter: "},{"keybind":"key.swapHands"}]

execute if score #gamemode jointeam matches 0 run title @a[tag=showteams] actionbar ["",{"text":"Spieler: "},{"score":{"name":"#players","objective":"jointeam1"},"color":"aqua"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam2"},"color":"black"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam3"},"color":"blue"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam4"},"color":"dark_aqua"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam5"},"color":"dark_blue"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam6"},"color":"dark_gray"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam7"},"color":"dark_green"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam8"},"color":"dark_purple"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam9"},"color":"dark_red"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam10"},"color":"gold"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam11"},"color":"gray"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam12"},"color":"green"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam13"},"color":"light_purple"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam14"},"color":"red"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam15"},"color":"white"},{"text":"/"},{"score":{"name":"#players","objective":"jointeam16"},"color":"yellow"}]

#Teleport
tp @a[team=1,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team1,limit=1]
tp @a[team=2,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team2,limit=1]
tp @a[team=3,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team3,limit=1]
tp @a[team=4,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team4,limit=1]
tp @a[team=5,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team5,limit=1]
tp @a[team=6,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team6,limit=1]
tp @a[team=7,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team7,limit=1]
tp @a[team=8,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team8,limit=1]
tp @a[team=9,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team9,limit=1]
tp @a[team=10,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team10,limit=1]
tp @a[team=11,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team11,limit=1]
tp @a[team=12,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team12,limit=1]
tp @a[team=13,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team13,limit=1]
tp @a[team=14,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team14,limit=1]
tp @a[team=15,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team15,limit=1]
tp @a[team=16,tag=teamteleport] @e[type=armor_stand,tag=spawn,tag=team16,limit=1]
execute as @a[team=!,tag=teamteleport] at @s run spawnpoint @s ~ ~ ~

tag @a[tag=teamteleport] remove teamteleport

# Spawn korrekturen
execute as @e[type=armor_stand,tag=spawn,tag=game] at @s align xyz run tp @s ~0.5 ~ ~0.5 facing 0 0 0
execute at @e[type=armor_stand,tag=spawn,tag=game] run fill ~ ~1 ~ ~ ~ ~ minecraft:air
