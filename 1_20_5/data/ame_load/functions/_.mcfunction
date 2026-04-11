# Stage 0 Load
summon minecraft:marker ~ ~ ~ {Tags:["macro.stage3"],CustomName:'{"text":"AME"}'}
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run say Loading macroEngine...
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run function ame_load:load/all
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run kill @s