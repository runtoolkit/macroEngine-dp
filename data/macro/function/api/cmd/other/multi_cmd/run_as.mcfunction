# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/other/multi_cmd/run_as
# Run queue as a specific entity
#
# INPUT (storage macro:input):
# selector → entity selector
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:api/cmd/other/multi_cmd/internal/run_as_exec with storage macro:input
