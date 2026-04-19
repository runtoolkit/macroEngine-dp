# macro:core/fallback/entity_missing
# Called when a required entity target was not found.
# Usage:
#   execute if entity <selector> run function ns:your/action
#   execute unless entity <selector> run function macro:core/fallback/entity_missing
$function macro:systems/log/warn {message:"[Fallback] entity_missing — no valid target found"}
data modify storage macro:output fallback set value {triggered:1b,reason:"entity_missing"}
return 0
