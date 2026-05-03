execute unless data storage macro:engine global{loaded:1b} run return 0

data modify storage macro:engine trigger_binds set value []
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"trigger/unbind_all ","color":"aqua"},{"text":"⚠ ","color":"yellow"},{"text":"all trigger binds cleared","color":"#555555"}]
