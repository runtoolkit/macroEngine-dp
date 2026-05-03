# macro:systems/geo/region_watch/internal/fire_enter_cmd [MACRO]
# INPUT: $(on_enter_cmd) — from _rw_cur; called ONLY when on_enter_cmd field exists.
# @s = player entering the region
execute unless function macro:core/security/cmd_gate run return 0
$$(on_enter_cmd)
