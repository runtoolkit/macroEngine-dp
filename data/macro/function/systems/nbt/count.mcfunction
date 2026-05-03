# ─────────────────────────────────────────────────────────────────
# macro:systems/nbt/count
# Returns the element count of a list in storage.
#
# INPUT (storage macro:input):
# storage → storage namespace
# path → list path
#
# OUTPUT: macro:output result (int)
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/nbt/internal/count_exec with storage macro:input {}
