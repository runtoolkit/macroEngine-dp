execute unless data storage macro:engine global{loaded:1b} run return 0

$data modify storage macro:engine flags.$(key) set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"flag/set ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(key)","color":"aqua"}]
