# macro:systems/hook/on_killed_by_arrow
# Reward: killed_by_arrow advancement (entity_killed_player + killing_blow arrow)
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/killed_by_arrow
scoreboard players add @s macro.hook_killed_by_arrow 1
