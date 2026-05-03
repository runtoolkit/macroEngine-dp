# ─────────────────────────────────────────────────────────────────
# macro:systems/math/vec/sub
# Subtracts vector B from vector A. (A - B)
#
# INPUT: ax, ay, az, bx, by, bz
# OUTPUT: macro:output {x, y, z}
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/math/vec/internal/sub_exec with storage macro:input {}
