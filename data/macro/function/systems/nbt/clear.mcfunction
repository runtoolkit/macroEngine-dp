# ─────────────────────────────────────────────────────────────────
# macro:systems/nbt/clear
# Removes a specific path from storage.
#
# INPUT (storage macro:input):
# storage → storage namespace
# path → path to remove
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/nbt/internal/clear_exec with storage macro:input {}
