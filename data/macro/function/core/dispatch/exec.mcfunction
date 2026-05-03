# macro:core/dispatch/exec [MACRO]
# THE ONLY file in AME that executes $function $(func).
# Do NOT call directly — use #macro:internal/dispatch.
#
# INPUT (macro:engine._dispatch): func → fully-qualified function name
execute unless data storage macro:engine global{loaded:1b} run return 0
$function $(func)
