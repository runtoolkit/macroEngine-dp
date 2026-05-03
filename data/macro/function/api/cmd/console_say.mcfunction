# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/console_say  [REMOVED]
#
# /say sends a server-level message to all players;
# it produces shell-script-like execution behavior and intent
# detection is not reliably possible, so this function has been removed.
# See: SECURITY.md — "Intent Detection" section.
#
# Alternative: macro:systems/string/announce
# ─────────────────────────────────────────────────────────────────
execute unless data storage macro:engine global{loaded:1b} run return 0

return 0
