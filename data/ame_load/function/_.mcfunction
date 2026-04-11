# Stage 0 Load
<<<<<<< HEAD
summon minecraft:marker ~ ~ ~ {Tags:["macro.stage0"],CustomName:'{"text":"AME"}'}
execute as @e[type=minecraft:marker,tag=macro.stage0,limit=1] run say Loading macroEngine...
execute as @e[type=minecraft:marker,tag=macro.stage0,limit=1] run function ame_load:load/all
execute as @e[type=minecraft:marker,tag=macro.stage0,limit=1] run kill @s
=======
summon minecraft:marker ~ ~ ~ {Tags:["macro.stage3"],CustomName:'{"text":"AME"}'}
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run say Loading macroEngine...
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run schedule function ame_load:load/all 7.1t replace
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run kill @s
>>>>>>> 29abdb0 (Fix #11)
