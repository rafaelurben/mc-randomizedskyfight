tp @a 0 90 0
setworldspawn 0 90 0
spawnpoint @a 0 90 0

worldborder center 0 0
worldborder set 320 0


kill @e[type=!player,tag=!game]
tag @e[tag=structurespawner] remove active


tellraw @a ["",{"text":"Mapreset erfolgt ","color":"red"},{"text":"JETZT!","color":"dark_red"},{"text":" Dies könnte ziemliche Lags verursachen!","color":"red"}]
effect give @a minecraft:resistance 5 255 true

#######

function game:map/clearblocks

setblock 0 88 0 minecraft:diamond_block
tp @a 0 90 0


kill @e[type=!player,tag=!game]


#Loading Map

schedule function game:map/placestructureblocks 2t
schedule function game:map/placeredstoneblocks 4t
schedule function game:map/destroyblocks 6t
schedule function game:map/endreset 8t


scoreboard players set #starttimer game -1
