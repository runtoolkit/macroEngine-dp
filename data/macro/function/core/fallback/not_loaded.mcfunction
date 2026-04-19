# macro:core/fallback/not_loaded
# Called when the engine is not initialized (e.g. pre-load call attempt).
# Usage: called automatically by guard checks.
$function macro:systems/log/error {message:"[Fallback] not_loaded — macroEngine not initialized, call /function macro:load"}
data modify storage macro:output fallback set value {triggered:1b,reason:"not_loaded"}
return 0
