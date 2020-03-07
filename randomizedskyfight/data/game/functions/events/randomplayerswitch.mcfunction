execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["PlayerSwitch"]}
tag @r[distance=1..,tag=player,scores={game=1..}] add SwitchPlayer
tp @s @a[tag=SwitchPlayer,limit=1]
tp @a[tag=SwitchPlayer,limit=1] @e[tag=PlayerSwitch,limit=1]
kill @e[tag=PlayerSwitch,limit=1]
tag @a remove SwitchPlayer
