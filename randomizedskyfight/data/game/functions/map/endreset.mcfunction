tp @a 0 90 0
tellraw @a ["",{"text":"Mapreset wurde ","color":"red"},{"text":"erfolgreich","color":"green"},{"text":" durchgeführt!","color":"red"}]

#setblock 0 90 4 minecraft:player_wall_head[facing=south]{Owner:{Name:"rafaelurben"}}
#setblock 0 90 -4 minecraft:player_wall_head[facing=north]{Owner:{Name:"MinimisPinguin"}}

setblock 0 89 3 minecraft:oak_sign[rotation=8]{Text1:'[{"text":"- Developer -","color":"gold"}]',Text2:'[{"text":"---------------"}]',Text3:'[{"text":"Rafael Urben","color":"green"}]',Text4:'[{"text":"","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 10"}}]'}
setblock 0 89 -3 minecraft:oak_sign[rotation=0]{Text1:'[{"text":"- Idee -","color":"gold"}]',Text2:'[{"text":"---------------"}]',Text3:'[{"text":"MinimisPinguin","color":"green"}]',Text4:'[{"text":"","clickEvent":{"action":"run_command","value":"/trigger gamesettings set 11"}}]'}

summon armor_stand 0 89 4 {Rotation:[180f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16760576}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16760576}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16760576}}},{id:"player_head",Count:1b,tag:{SkullOwner:"rafaelurben"}}],HandItems:[{id:"command_block",Count:1b},{}],CustomName:"{\"text\":\"rafaelurben - Technik\",\"color\":\"gold\"}",CustomNameVisible:1b,DisabledSlots:2039583,Pose:{RightArm:[326f,0f,16f]}}
summon armor_stand 0 89 -4 {Rotation:[0f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:65284}}},{id:"leather_leggings",Count:1b,tag:{display:{color:65284}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:65284}}},{id:"player_head",Count:1b,tag:{SkullOwner:"MinimisPinguin"}}],HandItems:[{},{id:"sea_lantern",Count:1b}],CustomName:"{\"text\":\"MinimisPinguin - Idee & Design\",\"color\":\"green\"}",CustomNameVisible:1b,DisabledSlots:2039583,Pose:{LeftArm:[326f,0f,14f]}}

tellraw @a ["",{"text":"Ersteller des "},{"text":"Randomized Skyfight","color":"aqua"},{"text":": "},{"text":"Rafael Urben (Entwicklung)","color":"green","clickEvent":{"action":"open_url","value":"https://fiverr.com/rafaelurben"},"hoverEvent":{"action":"show_text","value":"https://fiverr.com/rafaelurben"}},{"text":" und "},{"text":"MinimisPinguin (Idee)","color":"green","clickEvent":{"action":"open_url","value":"https://twitter.com/minimispinguin"},"hoverEvent":{"action":"show_text","value":"https://twitter.com/minimispinguin"}}]

scoreboard players set #starttimer game -1
