# macro:systems/hook/on_dimension_change
# Advancement reward: runs when changed_dimension triggers.
# @s = player who changed dimension

execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/dimension_change
scoreboard players add @s macro.hook_dim_changed 1
