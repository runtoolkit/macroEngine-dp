# macro:systems/hook/on_break_block
# Reward: break_block advancement (item_durability_changed, delta max -1)
# Feeds both break_block and using_item hooks.
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/break_block
scoreboard players add @s macro.hook_tool_used 1
scoreboard players add @s macro.hook_using_item 1
