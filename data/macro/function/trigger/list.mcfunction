# ============================================
# macro:trigger/list
# ============================================
# Shows registered trigger binds to @s.
# macro.debug tag is not required; any administrator can call it.
# 1.21.6+: via dialog; earlier versions: via tellraw.
#
# USAGE:
# execute as <player> run function macro:trigger/list
# ============================================

execute unless data storage macro:engine trigger_binds[0] run tellraw @s {"text":"[Trigger] No binds registered.","color":"gray"}
execute if data storage macro:engine trigger_binds[0] run tellraw @s [{"text":"[Trigger] Bind list:\n","color":"gold","bold":true},{"nbt":"trigger_binds","storage":"macro:engine","interpret":false}]
