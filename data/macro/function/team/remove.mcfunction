# ============================================
# macro:team/remove
# ============================================
# Playeryu bulundugu takimdan cikarir.
# INPUT: macro:input { player:"<player>" }
# OUTPUT: —
# ============================================

$team leave $(player)
$tellraw @a[tag=macro.debug] [{"text":"[Team] ","color":"gray"},{"text":"$(player)","color":"white"},{"text":" left the team.","color":"gray"}]
