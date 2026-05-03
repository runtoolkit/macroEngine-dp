# [MACRO] INPUT: $(current_cmd) — function path to execute
execute unless function macro:core/security/cmd_gate run return 0
$function $(current_cmd)
