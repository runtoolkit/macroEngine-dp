# macro:systems/flag/list_systems — List all tick channels with their current config
execute unless data storage macro:engine global{loaded:1b} run return 0

tellraw @s [{"text":"[AME] Tick Channels","color":"gold","bold":true}]
tellraw @s {"storage":"macro:engine","nbt":"tick.channels","color":"yellow"}