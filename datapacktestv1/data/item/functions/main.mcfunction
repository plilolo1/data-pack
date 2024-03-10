# regerd
execute at @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] if block ~ ~-1 ~ minecraft:lava unless entity @e[type=armor_stand,tag=lava,distance=..1] run summon armor_stand ~ ~ ~ {Tags:["lava"],Marker:1b,Invisible:1b}

# posse l'opsi (replasse la lave uniquement) sous l'armor_stand 
execute at @e[type=armor_stand,tag=lava,scores={TASL=..59}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:obsidian replace lava

#
scoreboard players add @e[type=armor_stand,tag=lava] TASL 1

# execute si armor stand tag"lava" si le scores du scoreboard (TASL) ai = ou superieur a 60 
execute at @e[type=armor_stand,tag=lava,scores={TASL=60..}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:lava replace obsidian

# pour tuer le armor stand avec le tag lava si le scoredu scoreboard(TASL) ai de = ou superieur a 61  
kill @e[type=armor_stand,tag=lava,scores={TASL=61..}]

