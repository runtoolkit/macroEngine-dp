data remove storage macro:engine once_keys.ame_test.once_demo
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"lib/once test (3 kez çağrılıyor)","color":"yellow"}]
data modify storage macro:input key set value "ame_test.once_demo"
data modify storage macro:input func set value "ame_test:debug/lib/_once_fired"
function macro:core/lib/once with storage macro:input {}
function macro:core/lib/once with storage macro:input {}
function macro:core/lib/once with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME-TEST] ","color":"#00AAAA","bold":true},{"text":"lib/once → yukarıda tam 1 mesaj görünmeli","color":"gray"}]
