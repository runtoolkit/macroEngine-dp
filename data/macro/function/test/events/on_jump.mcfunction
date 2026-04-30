# macro:test/events/on_jump
# @s = jumping player
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"on_jump ","color":"yellow"},{"selector":"@s","color":"white"}]
