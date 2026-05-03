# macro:systems/hook/on_using_item
# Called by tick_scan when macro.hook_using_item >= 1.
# Score is set by on_break_block (shared advancement).

execute unless data storage macro:engine global{loaded:1b} run return 0
