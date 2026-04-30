# macro:test/events/on_enchant
# @s = player who enchanted
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"on_enchant ","color":"yellow"},{"selector":"@s","color":"white"}]
