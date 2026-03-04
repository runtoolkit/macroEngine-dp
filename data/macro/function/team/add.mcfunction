# ============================================
# macro:team/add
# ============================================
# Playeryu takima addr.
# INPUT: macro:input { team:"<name>", player:"<player>" }
# OUTPUT: —
# ============================================

$team join $(team) $(player)
$tellraw @a[tag=macro.debug] [{"text":"[Team] ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" -> "},{"text":"$(team)","color":"aqua"}]
