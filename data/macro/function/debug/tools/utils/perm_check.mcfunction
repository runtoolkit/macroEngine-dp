# macro:debug/tools/utils/perm_check
# Returns 1 if executor has macro.admin, 0 (+ fallback) if not.
execute if entity @s[tag=macro.admin] run return 1
function macro:core/fallback/no_permission
return 0
