# ============================================================
# macro:systems/uuid/forget
# Deletes a UUID entry from the cache
#
# KULLANIM:
# data modify storage macro:input key set value "benim_anahtarim"
# function macro:systems/uuid/forget
#
# INPUT:
# macro:input key → name of the key to delete
# ============================================================
execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/uuid/internal/forget_key with storage macro:input
