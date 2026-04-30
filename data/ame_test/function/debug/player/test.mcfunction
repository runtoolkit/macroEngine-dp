tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"player/test BAŞLIYOR","color":"yellow"}]
function macro:player/get_name
data modify storage macro:input player set from storage macro:names temp.NAME
function macro:player/get_pos with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"player/get_pos: ","color":"aqua"},{"storage":"macro:output","nbt":"result","color":"green"}]
data modify storage macro:input player set from storage macro:names temp.NAME
function macro:player/is_sneaking with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"player/is_sneaking: ","color":"aqua"},{"storage":"macro:output","nbt":"result","color":"green"}]
data modify storage macro:input player set from storage macro:names temp.NAME
function macro:player/is_on_ground with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"player/is_on_ground: ","color":"aqua"},{"storage":"macro:output","nbt":"result","color":"green"}]
data modify storage macro:input player set from storage macro:names temp.NAME
function macro:player/get_dimension with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"player/get_dimension: ","color":"aqua"},{"storage":"macro:output","nbt":"result","color":"green"}]
data modify storage macro:input player set from storage macro:names temp.NAME
data modify storage macro:input key set value "ame_test.coins"
data modify storage macro:input value set value 0
function macro:player/set_var with storage macro:input {}
function macro:player/increment with storage macro:input {}
function macro:player/increment with storage macro:input {}
function macro:player/decrement with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"player/increment×2 decrement×1 (beklenen coins=1): ","color":"aqua"},{"storage":"macro:engine","nbt":"players","color":"green"}]
