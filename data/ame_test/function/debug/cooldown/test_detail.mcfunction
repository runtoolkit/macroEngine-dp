function macro:player/get_name
data modify storage macro:input player set from storage macro:names temp.NAME
data modify storage macro:input key set value "ame_test.cooldown"
data modify storage macro:input duration set value 200
function macro:core/cooldown/set with storage macro:input {}
data modify storage macro:input player set from storage macro:names temp.NAME
data modify storage macro:input key set value "ame_test.cooldown"
function macro:core/cooldown/remaining with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"cooldown/remaining (beklenen >0): ","color":"aqua"},{"storage":"macro:output","nbt":"result","color":"green"}]
data modify storage macro:input player set from storage macro:names temp.NAME
data modify storage macro:input key set value "ame_test.cooldown"
function macro:core/cooldown/detail with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"cooldown/detail (beklenen active:1b): ","color":"aqua"},{"storage":"macro:output","nbt":"active","color":"green"}]
