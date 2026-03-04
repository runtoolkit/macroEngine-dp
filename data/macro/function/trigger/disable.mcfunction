# ============================================
# macro:trigger/disable
# ============================================
# Disables the macro_action trigger for a specific player.
# Score is reset and not re-enabled.
#
# INPUT: macro:input { player:"<player_adi>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# function macro:trigger/disable with storage macro:input {}
# ============================================

$scoreboard players reset $(player) macro_action
