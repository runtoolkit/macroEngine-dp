# macro:core/engine/call/execute_validated/run
# Expands and runs the validated function via macro.
# Gets $(func) from macro:output.inputs; uses macro:input as parameter source.
execute unless data storage macro:engine global{loaded:1b} run return 0
$function $(func) with storage macro:input {}
