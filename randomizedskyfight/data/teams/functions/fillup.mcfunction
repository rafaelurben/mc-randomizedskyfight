# execute if score #fillup jointeam > #players jointeam1 run team join 1 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam2 run team join 2 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam3 run team join 3 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam4 run team join 4 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam5 run team join 5 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam6 run team join 6 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam7 run team join 7 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam8 run team join 8 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam9 run team join 9 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam10 run team join 10 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam11 run team join 11 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam12 run team join 12 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam13 run team join 13 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam14 run team join 14 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam15 run team join 15 @r[tag=jointeam,scores={jointeamready=1..}, team=]
# execute if score #fillup jointeam > #players jointeam16 run team join 16 @r[tag=jointeam,scores={jointeamready=1..}, team=]

execute if score #fillup jointeam > #players jointeam1 run team join 1 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam2 run team join 2 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam3 run team join 3 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam4 run team join 4 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam5 run team join 5 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam6 run team join 6 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam7 run team join 7 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam8 run team join 8 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam9 run team join 9 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam10 run team join 10 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam11 run team join 11 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam12 run team join 12 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam13 run team join 13 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam14 run team join 14 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam15 run team join 15 @r[tag=jointeam, team=]
execute if score #fillup jointeam > #players jointeam16 run team join 16 @r[tag=jointeam, team=]

scoreboard players add #fillup jointeam 1

# execute if entity @e[tag=jointeam,scores={jointeamready=1..},team=] run function teams:fillup
execute if score #fillup jointeam <= #maxFillup jointeam if entity @e[tag=jointeam,team=] run function teams:fillup

scoreboard players set #fillup jointeam 1
