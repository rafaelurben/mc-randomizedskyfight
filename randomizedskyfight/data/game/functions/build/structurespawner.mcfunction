summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["structurespawner","game"]}
tellraw @s {"text":"Strukturspawner gespawnt","color":"gold"}
function game:build/cmds
