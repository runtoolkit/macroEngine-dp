# macro:systems/hook/on_entity_kill
# Reward: entity_kill advancement (player_killed_entity trigger)
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/entity_kill
scoreboard players add @s macro.hook_entity_killed 1
