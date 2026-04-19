# macro:core/fallback/no_permission
# Called when the executor lacks macro.admin tag for a privileged action.
# Usage:
#   execute if entity @s[tag=macro.admin] run function ns:your/action
#   execute unless entity @s[tag=macro.admin] run function macro:core/fallback/no_permission
$function macro:systems/log/warn {message:"[Fallback] no_permission — macro.admin tag required"}
data modify storage macro:output fallback set value {triggered:1b,reason:"no_permission"}
return 0
