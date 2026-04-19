execute unless function macro:debug/tools/utils/check_all run return 0

# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/console_me
# Sends an action message via /me (italic, yellow).
# Visible in console and to players with "* @" prefix.
# Useful for lightweight debug notifications or event logging.
#
# INPUT:
#   $(message) → action text
#
# EXAMPLE:
# function macro:api/cmd/console_me {message:"AME scheduler tick fired"}
# # In-game: * @ AME scheduler tick fired
# ─────────────────────────────────────────────────────────────────

$me $(message)
