execute as @e[tag=structurepos] at @s run setblock ~ ~-3 ~ air
execute as @e[tag=structurepos] at @s run setblock ~ ~-2 ~ air
tag @e[tag=structurepos,tag=activated] remove activated
kill @e[tag=structurepos]
