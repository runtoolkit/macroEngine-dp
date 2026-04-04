# macro:rate_limit/check
# Public API: Record action AND check rate limit in one call.
# Returns: 1 = rate limited (block action), 0 = OK to proceed

# Admin bypass
execute if entity @s[tag=macro.rl_bypass] run return 0

# Already in cooldown — block immediately, do not record
execute if score @s macro.rl_cooldown matches 1.. run return 1

# Initialize player max if not set
execute unless score @s macro.rl_max matches 1.. run scoreboard players operation @s macro.rl_max = #rl_max_per_sec macro.rl_max

# Record this action
scoreboard players add @s macro.rl_counter 1

# Counter now exceeds limit — apply penalty
execute if score @s macro.rl_counter > @s macro.rl_max run function macro:rate_limit/internal/detect_abuse

# Return 1 if now in cooldown (penalty was applied), 0 if OK
execute if score @s macro.rl_cooldown matches 1.. run return 1
return 0
