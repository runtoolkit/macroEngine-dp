# ─────────────────────────────────────────────────────────────────
# macro:systems/nbt/move
# Moves a path within the same storage (copy + delete).
#
# INPUT (storage macro:input):
# storage → storage namespace
# from_path → source path
# to_path → destination path
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/nbt/internal/move_exec with storage macro:input {}
