# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/other/multi_cmd/utils/clear_queue
# Clear the queue
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

data remove storage macro:engine _mcmd_queue
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"multi_cmd/utils/clear ","color":"aqua"},{"text":"✔ queue cleared","color":"yellow"}]
