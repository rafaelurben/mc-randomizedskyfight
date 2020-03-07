tp @a 0 90 0
setworldspawn 0 90 0
spawnpoint @a 0 90 0

worldborder center 0 0
worldborder set 320 0


kill @e[type=!player,tag=!game]


tellraw @a ["",{"text":"Mapreset erfolgt ","color":"red"},{"text":"JETZT!","color":"dark_red"},{"text":" Dies könnte ziemliche Lags verursachen!","color":"red"}]
effect give @a minecraft:resistance 5 255 true

#######

function game:map/clearblocks

setblock 0 88 0 minecraft:diamond_block
tp @a 0 90 0


kill @e[type=!player,tag=!game]


#Loading Map

schedule function game:map/placestructureblocks 20t
schedule function game:map/placeredstoneblocks 30t
schedule function game:map/destroyblocks 40t
schedule function game:map/endreset 60t
