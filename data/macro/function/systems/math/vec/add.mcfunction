# ─────────────────────────────────────────────────────────────────
# macro:systems/math/vec/add
# Adds two 3D vectors.
#
# INPUT: ax, ay, az, bx, by, bz
# OUTPUT: macro:output {x, y, z}
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:systems/math/vec/internal/add_exec with storage macro:input {}
