# ============================================
# macro:trigger/internal/dispatch
# ============================================
# Reads, resets and
# searches for a matching bind. Runs the found function.
# If multiple binds share the same value, all run.
#
# tick.mcfunction is called by:
# execute as @a[scores={macro_action=1..}] run function macro:trigger/internal/dispatch
# ============================================

# Temporarily saand the player's trigger value
scoreboard players operation $tc_player macro.tmp = @s macro_action

# Reset trigger and re-enable
scoreboard players set @s macro_action 0
scoreboard players enable @s macro_action

# Stop if bind list is empty
execute unless data storage macro:engine trigger_binds[0] run return 0

# Copy binds to a private temporary list (macro:input'e preserand existingdan)
data modify storage macro:engine _tc_binds set from storage macro:engine trigger_binds

# Iterate
function macro:trigger/internal/check_next
data remove storage macro:engine _tc_binds
data remove storage macro:engine _tc_current
