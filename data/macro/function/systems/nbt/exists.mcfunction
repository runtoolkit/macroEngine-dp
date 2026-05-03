# ─────────────────────────────────────────────────────────────────
# macro:systems/nbt/exists
# Checks whether a specific path exists in storage.
#
# INPUT (storage macro:input):
# storage → storage namespace
# path → path to check
#
# OUTPUT: macro:output result → 1b (exists) or 0b (not found)
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/nbt/internal/exists_exec with storage macro:input {}
