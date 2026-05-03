# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/console_me  [REMOVED]
#
# The /me command produces shell-script-like execution behavior,
# and intent detection is not reliably possible, so this function has been removed.
# See: SECURITY.md — "Intent Detection" section.
#
# Alternative: macro:systems/log/info or macro:api/cmd/msg
# ─────────────────────────────────────────────────────────────────
execute unless data storage macro:engine global{loaded:1b} run return 0

return 0
