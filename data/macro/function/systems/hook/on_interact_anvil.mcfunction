# macro:systems/hook/on_interact_anvil
# Advancement reward: runs when player interacts with an anvil
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/interact_anvil
function macro:systems/hook/internal/on_interact_anvil
