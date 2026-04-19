# macro:core/fallback/generic
# Called when no specific fallback applies.
# Usage: function macro:core/fallback/generic
$function macro:systems/log/warn {message:"[Fallback] generic fallback triggered"}
data modify storage macro:output fallback set value {triggered:1b,reason:"generic"}
return 0
