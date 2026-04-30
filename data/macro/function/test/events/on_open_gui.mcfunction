# macro:test/events/on_open_gui
# @s = player who opened a GUI block
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"on_open_gui ","color":"yellow"},{"selector":"@s","color":"white"}]
