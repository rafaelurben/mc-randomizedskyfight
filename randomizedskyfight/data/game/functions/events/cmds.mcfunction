tellraw @a ["",{"text":"Events: ","color":"dark_aqua"},{"text":"Item","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @a[tag=player,scores={game=1..},team=!] run function game:events/randomitem"}},{"text":" / ","color":"dark_aqua"},{"text":"Effect","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @r[tag=player,team=!,scores={game=1..}] run function game:events/randomeffect"}},{"text":" / ","color":"dark_aqua"},{"text":"Spawn","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute at @r[tag=player,team=!,scores={game=1..}] run function game:events/randomspawn"}},{"text":" / ","color":"dark_aqua"},{"text":"Structure","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @e[tag=structurespawner,tag=active,limit=1,sort=random] at @s run function game:events/randomstructure"}},{"text":" / ","color":"dark_aqua"},{"text":"Playerswitch","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @r[tag=player,scores={game=1..}] run function game:events/playerswitch"}}]


# https://minecraftjson.com/

#{"jformat":5,"jobject":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"3","insertion":"","click_event_type":0,"click_event_value":"","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"caa535fd-f6b0-4ae0-a874-ff36be326588","text":"Events: "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"13","insertion":"","click_event_type":"2","click_event_value":"execute as @a[tag=player,scores={game=1..},team=!] run function game:events/randomitem","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"9d85f245-c26a-402b-b4bc-fdd29c9ca5eb","text":"Item"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"3","insertion":"","click_event_type":0,"click_event_value":"","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"a79fed8c-7038-4025-8633-535516ee0345","text":" / "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"13","insertion":"","click_event_type":"2","click_event_value":"execute as @r[tag=player,team=!,gamemode=survival] run function game:events/randomeffect","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"745753be-5aab-4ddf-94b7-7bd5c68bddf0","text":"Effect"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"3","insertion":"","click_event_type":0,"click_event_value":"","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"766bc402-58b9-40a0-949e-f183c04000cf","text":" / "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"13","insertion":"","click_event_type":"2","click_event_value":"execute as @e[tag=spawner,limit=1,sort=random] run function game:events/randomspawn","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"0aeaf18b-ba87-4856-9cef-b3ef633cbe53","text":"Spawn"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"3","insertion":"","click_event_type":0,"click_event_value":"","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"c6ac7ad4-ccde-4629-92d8-48a9f9c3c434","text":" / "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"13","insertion":"","click_event_type":"2","click_event_value":"execute as @e[tag=structurespawner,tag=active,limit=1,sort=random] run function game:events/randomstructure","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"191febd2-74a1-4d9c-b78f-82e2af0369dc","text":"Structure"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"3","insertion":"","click_event_type":0,"click_event_value":"","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"3aae9689-833d-408f-98ae-07127a18456c","text":" / "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"13","insertion":"","click_event_type":"2","click_event_value":"execute as @r run function game:events/playerswitch","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"692cac02-f37f-4ade-bcfd-ff6815a3b96f","text":"Playerswitch: "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"10","insertion":"","click_event_type":"2","click_event_value":"/scoreboard players set #playerswitch game 1","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"e4ce1110-7dc1-44f7-99a3-7172d1746967","text":"on"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"6","insertion":"","click_event_type":0,"click_event_value":"","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"983f163f-710b-47b8-a2ec-3cd731d28488","text":" / "},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"12","insertion":"","click_event_type":"2","click_event_value":"/scoreboard players set #playerswitch game 0","hover_event_type":0,"hover_event_value":"","hover_event_children":[],"id":"f4a05466-db1c-48b9-a0d1-0afb86c470cf","text":"off"}],"command":"/tellraw @a %s","jtemplate":"tellraw"}
