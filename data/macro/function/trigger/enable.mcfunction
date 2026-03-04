# ============================================
# macro:trigger/enable
# ============================================
# Enables the macro_action trigger for a specific player.
# Player becomes able to type /trigger macro_action set <N>.
#
# INPUT: macro:input { player:"<player_adi>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# function macro:trigger/enable with storage macro:input {}
#
# To enable for all players:
# scoreboard players enable @a macro_action
# ============================================

$scoreboard players enable $(player) macro_action
