# [MACRO] INPUT: $(pre_hook) — pre-hook function path; called before cmd execution
execute unless data storage macro:engine global{loaded:1b} run return 0
$function $(pre_hook)
