# macro:core/fallback/storage_missing
# Called when expected NBT storage data is absent.
# Usage:
#   execute if data storage macro:input key run function ns:your/action
#   execute unless data storage macro:input key run function macro:core/fallback/storage_missing
$function macro:systems/log/warn {message:"[Fallback] storage_missing — required NBT key not found"}
data modify storage macro:output fallback set value {triggered:1b,reason:"storage_missing"}
return 0
