# macro:core/fallback/invalid_score
# Called when a required scoreboard value is absent or out of range.
# Usage:
#   execute if score @s my.score matches 1.. run function ns:your/action
#   execute unless score @s my.score matches 1.. run function macro:core/fallback/invalid_score
$function macro:systems/log/warn {message:"[Fallback] invalid_score — score missing or out of range, using default"}
data modify storage macro:output fallback set value {triggered:1b,reason:"invalid_score"}
return 0
