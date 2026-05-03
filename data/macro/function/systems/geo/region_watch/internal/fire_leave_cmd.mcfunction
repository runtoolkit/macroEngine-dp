# macro:systems/geo/region_watch/internal/fire_leave_cmd [MACRO]
# INPUT: $(on_leave_cmd) — from _rw_cur; called ONLY when on_leave_cmd field exists.
# @s = player leaving the region
execute unless function macro:core/security/cmd_gate run return 0
$$(on_leave_cmd)
