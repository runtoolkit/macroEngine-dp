# ============================================================
# macro:systems/uuid/recall
# Retrieves UUID string from the cache
#
# KULLANIM:
# data modify storage macro:input key set value "benim_anahtarim"
# function macro:systems/uuid/recall
#
# INPUT:
# macro:input key → key name used with uuid/store
#
# OUTPUT:
# macro:input value → UUID hex string
# (value unchanged if key not found)
# ============================================================
execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/uuid/internal/recall_read with storage macro:input
