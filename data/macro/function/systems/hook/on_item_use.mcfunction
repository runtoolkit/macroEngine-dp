# macro:systems/hook/on_item_use
# Reward: item_use advancement (using_item trigger)
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/item_use
scoreboard players add @s macro.hook_item_used 1
