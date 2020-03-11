function game:random

##################################

execute if score #randomevent game matches 1 run loot spawn ~ ~ ~ loot game:randomitem
execute if score #randomevent game matches 2 as @p run function game:events/randomeffect
execute if score #randomevent game matches 3 run function game:events/randomspawn
execute if score #randomevent game matches 4 run function game:events/randomstructure

#################################

kill @s[tag=LuckyBlock]
