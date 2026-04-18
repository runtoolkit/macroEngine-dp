# macro:debug/engine_macro/internal/fn_consumer [MACRO]
# Consumer for the with_function debug test.
# Receives: $(label), $(count) — written by fn_provider via _macro_pipe.
# Expected output: label=AME_test  count=7

$tellraw @s ["",{"text":"    result: ","color":"#555555"},{"text":"label=","color":"gray"},{"text":"$(label)","color":"green"},{"text":"  count=","color":"gray"},{"text":"$(count)","color":"green"},{"text":"  (expected: AME_test / 7)","color":"#555555"}]
