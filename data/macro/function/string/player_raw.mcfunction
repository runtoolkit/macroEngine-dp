# ============================================
# macro:string/player_raw
# ============================================
# Sends a full JSON text component to a specific player.
# broadcast_raw'in tek player hedefli versiyonu.
#
# INPUT: macro:input { target:"<player_name_or_selector>", json:"<tellraw JSON string>" }
#
# EXAMPLE:
# data modify storage macro:input target set value "Steve"
# data modify storage macro:input json set value "{\"text\":\"Gizli mesaj!\",\"color\":\"red\",\"bold\":true}"
# function macro:string/player_raw with storage macro:input {}
# ============================================

$tellraw $(target) $(json)
