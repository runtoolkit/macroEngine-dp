# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/other/multi_cmd/run_at
# Run queue at a specific location
#
# INPUT (storage macro:input):
# selector → entity selector
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:api/cmd/other/multi_cmd/internal/run_at_exec with storage macro:input
