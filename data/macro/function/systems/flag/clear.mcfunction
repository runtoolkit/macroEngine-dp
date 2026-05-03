execute unless data storage macro:engine global{loaded:1b} run return 0

$data remove storage macro:engine flags.$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"flag/clear ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(key)","color":"aqua"}]
