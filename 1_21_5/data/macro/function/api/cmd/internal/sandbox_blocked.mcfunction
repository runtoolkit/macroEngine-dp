# macro:api/cmd/internal/sandbox_blocked [1.21.5+ overlay]
# Extends the base sandbox_blocked with a test_block server log entry.
#
# test_block (log mode) was added in Java Edition 25w03a (1.21.5).
# When powered by redstone it writes its message to the server log file,
# providing a persistent audit trail outside the in-game log buffer.
#
# Block placement uses y=-62 in the AME forceloaded chunk (0, 0).
# The block is placed, powered, and immediately removed in the same tick.
function macro:api/cmd/internal/sandbox_blocked_macro with storage macro:engine {}

# ─── server log via test_block ───────────────────────────────────
setblock 0 -62 0 minecraft:test_block[mode=log]{message:"[AME SANDBOX] Dangerous command blocked. Run /function macro:systems/log/show for details."}
setblock 0 -61 0 minecraft:redstone_block
setblock 0 -61 0 minecraft:air
setblock 0 -62 0 minecraft:air
