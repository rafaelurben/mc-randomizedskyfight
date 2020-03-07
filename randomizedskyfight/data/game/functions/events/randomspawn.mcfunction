function game:random

################################

summon minecraft:armor_stand 0 50 0 {Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["spawnpos"]}
spreadplayers 0 0 100 144 false @e[tag=spawnpos]

################################

execute if score #randomspawn game matches 1 at @e[tag=spawnpos] run summon minecraft:zombie ~ ~ ~ {Passengers:[{id:"minecraft:zombie_villager",Passengers:[{id:"minecraft:zombie",DeathLootTable:"game:entities/zombietower",IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],VillagerData:{level:1,profession:"minecraft:armorer",type:"minecraft:desert"}}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute if score #randomspawn game matches 2 at @e[tag=spawnpos] run summon minecraft:slime ~ ~ ~ {Size:3,Passengers:[{id:"minecraft:slime",Size:1,Passengers:[{id:"minecraft:slime",DeathLootTable:"game:entities/slimetower",Size:0}]}]}
execute if score #randomspawn game matches 3 at @e[tag=spawnpos] run summon minecraft:magma_cube ~ ~ ~ {Size:3,Passengers:[{id:"minecraft:magma_cube",Size:1,Passengers:[{id:"minecraft:magma_cube",DeathLootTable:"game:entities/magmatower",Size:0}]}]}
execute if score #randomspawn game matches 4 at @e[tag=spawnpos] run summon minecraft:spider ~ ~ ~ {Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:spider",DeathLootTable:"game:entities/spidertower"}]}]}
execute if score #randomspawn game matches 5 at @e[tag=spawnpos] run summon minecraft:creeper ~ ~ ~ {Passengers:[{id:"minecraft:creeper",DeathLootTable:"game:entities/creepertower",powered:1b}]}
execute if score #randomspawn game matches 6 at @e[tag=spawnpos] run summon minecraft:enderman ~ ~ ~ {Passengers:[{id:"minecraft:enderman",Passengers:[{id:"minecraft:enderman",DeathLootTable:"game:entities/endermantower"}]}]}
execute if score #randomspawn game matches 7 at @e[tag=spawnpos] run summon minecraft:skeleton ~ ~ ~ {Passengers:[{id:"minecraft:wither_skeleton",Passengers:[{id:"minecraft:skeleton",DeathLootTable:"game:entities/skeletontower",ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute if score #randomspawn game matches 8 at @e[tag=spawnpos] run summon minecraft:vex ~ ~ ~ {Passengers:[{id:"minecraft:vex",Passengers:[{id:"minecraft:vex",DeathLootTable:"game:entities/vextower",Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.attackDamage,Base:0}]}],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.attackDamage,Base:0}]}],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.attackDamage,Base:0}]}
execute if score #randomspawn game matches 9 at @e[tag=spawnpos] run summon minecraft:silverfish ~ ~ ~ {Passengers:[{id:"minecraft:silverfish",Passengers:[{id:"minecraft:silverfish",DeathLootTable:"game:entities/silverfishtower"}]}]}
execute if score #randomspawn game matches 10 at @e[tag=spawnpos] run summon minecraft:iron_golem ~ ~ ~ {Passengers:[{id:"minecraft:snow_golem",Passengers:[{id:"minecraft:snow_golem",DeathLootTable:"game:entities/golemtower",Pumpkin:1b}]}]}
execute if score #randomspawn game matches 11 at @e[tag=spawnpos] run summon minecraft:bat ~ ~ ~
execute if score #randomspawn game matches 12 at @e[tag=spawnpos] run summon minecraft:bee ~ ~ ~
execute if score #randomspawn game matches 13 at @e[tag=spawnpos] run summon minecraft:blaze ~ ~ ~
execute if score #randomspawn game matches 14 at @e[tag=spawnpos] run summon minecraft:cat ~ ~ ~
execute if score #randomspawn game matches 15 at @e[tag=spawnpos] run summon minecraft:cave_spider ~ ~ ~
execute if score #randomspawn game matches 16 at @e[tag=spawnpos] run summon minecraft:chicken ~ ~ ~
execute if score #randomspawn game matches 17 at @e[tag=spawnpos] run summon minecraft:cow ~ ~ ~
execute if score #randomspawn game matches 18 at @e[tag=spawnpos] run summon minecraft:creeper ~ ~ ~
execute if score #randomspawn game matches 19 at @e[tag=spawnpos] run summon minecraft:donkey ~ ~ ~
execute if score #randomspawn game matches 20 at @e[tag=spawnpos] run summon minecraft:drowned ~ ~ ~
execute if score #randomspawn game matches 21 at @e[tag=spawnpos] run summon minecraft:enderman ~ ~ ~
execute if score #randomspawn game matches 22 at @e[tag=spawnpos] run summon minecraft:endermite ~ ~ ~
execute if score #randomspawn game matches 23 at @e[tag=spawnpos] run summon minecraft:evoker ~ ~ ~
execute if score #randomspawn game matches 24 at @e[tag=spawnpos] run summon minecraft:fox ~ ~ ~
execute if score #randomspawn game matches 25 at @e[tag=spawnpos] run summon minecraft:ghast ~ ~ ~
execute if score #randomspawn game matches 26 at @e[tag=spawnpos] run summon minecraft:horse ~ ~ ~
execute if score #randomspawn game matches 27 at @e[tag=spawnpos] run summon minecraft:husk ~ ~ ~
execute if score #randomspawn game matches 28 at @e[tag=spawnpos] run summon minecraft:illusioner ~ ~ ~
execute if score #randomspawn game matches 29 at @e[tag=spawnpos] run summon minecraft:iron_golem ~ ~ ~
execute if score #randomspawn game matches 30 at @e[tag=spawnpos] run summon minecraft:llama ~ ~ ~
execute if score #randomspawn game matches 31 at @e[tag=spawnpos] run summon minecraft:magma_cube ~ ~ ~
execute if score #randomspawn game matches 32 at @e[tag=spawnpos] run summon minecraft:mooshroom ~ ~ ~
execute if score #randomspawn game matches 33 at @e[tag=spawnpos] run summon minecraft:mule ~ ~ ~
execute if score #randomspawn game matches 34 at @e[tag=spawnpos] run summon minecraft:ocelot ~ ~ ~
execute if score #randomspawn game matches 35 at @e[tag=spawnpos] run summon minecraft:panda ~ ~ ~
execute if score #randomspawn game matches 36 at @e[tag=spawnpos] run summon minecraft:parrot ~ ~ ~
execute if score #randomspawn game matches 37 at @e[tag=spawnpos] run summon minecraft:phantom ~ ~ ~
execute if score #randomspawn game matches 38 at @e[tag=spawnpos] run summon minecraft:pig ~ ~ ~
execute if score #randomspawn game matches 39 at @e[tag=spawnpos] run summon minecraft:pillager ~ ~ ~
execute if score #randomspawn game matches 40 at @e[tag=spawnpos] run summon minecraft:rabbit ~ ~ ~
execute if score #randomspawn game matches 41 at @e[tag=spawnpos] run summon minecraft:ravager ~ ~ ~
execute if score #randomspawn game matches 42 at @e[tag=spawnpos] run summon minecraft:sheep ~ ~ ~
execute if score #randomspawn game matches 43 at @e[tag=spawnpos] run summon minecraft:silverfish ~ ~ ~
execute if score #randomspawn game matches 44 at @e[tag=spawnpos] run summon minecraft:skeleton ~ ~ ~
execute if score #randomspawn game matches 45 at @e[tag=spawnpos] run summon minecraft:skeleton_horse ~ ~ ~
execute if score #randomspawn game matches 46 at @e[tag=spawnpos] run summon minecraft:slime ~ ~ ~
execute if score #randomspawn game matches 47 at @e[tag=spawnpos] run summon minecraft:snow_golem ~ ~ ~
execute if score #randomspawn game matches 48 at @e[tag=spawnpos] run summon minecraft:spider ~ ~ ~
execute if score #randomspawn game matches 49 at @e[tag=spawnpos] run summon minecraft:vex ~ ~ ~
execute if score #randomspawn game matches 50 at @e[tag=spawnpos] run summon minecraft:villager ~ ~ ~
execute if score #randomspawn game matches 51 at @e[tag=spawnpos] run summon minecraft:vindicator ~ ~ ~
execute if score #randomspawn game matches 52 at @e[tag=spawnpos] run summon minecraft:wandering_trader ~ ~ ~
execute if score #randomspawn game matches 53 at @e[tag=spawnpos] run summon minecraft:witch ~ ~ ~
execute if score #randomspawn game matches 54 at @e[tag=spawnpos] run summon minecraft:wither_skeleton ~ ~ ~
execute if score #randomspawn game matches 55 at @e[tag=spawnpos] run summon minecraft:wolf ~ ~ ~
execute if score #randomspawn game matches 56 at @e[tag=spawnpos] run summon minecraft:zombie_horse ~ ~ ~
execute if score #randomspawn game matches 57 at @e[tag=spawnpos] run summon minecraft:zombie_pigman ~ ~ ~
execute if score #randomspawn game matches 58 at @e[tag=spawnpos] run summon minecraft:zombie_villager ~ ~ ~

###############################

kill @e[tag=spawnpos]

###############################
# NEUE Spawns hinzufügen:
# 1. Ohen Zeile kopieren und die Zahl um 1 erhöhen (so, dass für jeden Zufallswert ein Command da ist)
# 2. Summon-Command abändern (wenn DeathLootTable benutzt: Loottable in Ordner data/game/loot_tables/entities/??.json speichern.)
# 3. In der Datei data/game/loot_tables/randomspawn Zahl bei "max" abändern
###############################
