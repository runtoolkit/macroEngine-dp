# [MACRO] INPUT: $(post_hook) — post-hook function path; called after cmd execution
execute unless data storage macro:engine global{loaded:1b} run return 0
$function $(post_hook)
