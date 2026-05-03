# ─────────────────────────────────────────────────────────────────
# macro:systems/geo/region_watch/unregister
# Deletes a registered region. Player state scores are not cleared
# (automatically skipped in the next tick_scan loop).
#
# INPUT (storage macro:input):
# id → region id
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/geo/region_watch/internal/unregister_exec with storage macro:input {}
