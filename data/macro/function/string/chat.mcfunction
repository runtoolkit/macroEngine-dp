# ============================================
# macro:string/chat
# ============================================
# Sends a coloured chat message to a specific player.
# Short-form version of announce for a single player target.
#
# INPUT: macro:input { target:"<player_name_or_selector>", message:"<text>", color:"<color>" }
#
# EXAMPLE:
# data modify storage macro:input target set value "Steve"
# data modify storage macro:input message set value "Fireball activated!"
# data modify storage macro:input color set value "gold"
# function macro:string/chat with storage macro:input {}
# ============================================

$tellraw $(target) {"text":"$(message)","color":"$(color)"}
