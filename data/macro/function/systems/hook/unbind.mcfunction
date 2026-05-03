# ─────────────────────────────────────────────────────────────────
# macro:systems/hook/unbind
# Removes all binds belonging to a specific event.
#
# INPUT (storage macro:input):
# event → event name
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/hook/internal/unbind_exec with storage macro:input {}
