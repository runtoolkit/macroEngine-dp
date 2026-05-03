# macro:systems/hook/on_interact_shulker_box
# Advancement reward: runs when player opens a shulker box
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/interact_shulker_box
function macro:systems/hook/internal/on_interact_shulker_box
