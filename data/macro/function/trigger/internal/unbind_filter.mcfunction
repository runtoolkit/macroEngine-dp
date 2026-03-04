# ============================================
# macro:trigger/internal/unbind_filter
# ============================================
# _tc_unbind listesini iterate eder.
# For each element: if value does not match _tc_uval, copy back to trigger_binds.
# ============================================

execute unless data storage macro:engine _tc_unbind[0] run return 0

# Mevcut elemanin valueini read
execute store result score $tc_fval macro.tmp run data get storage macro:engine _tc_unbind[0].value

# Compare with _tc_uval
execute store result score $tc_uval macro.tmp run data get storage macro:engine _tc_uval

# If different → this bind is kept, add it back
execute unless score $tc_fval macro.tmp = $tc_uval macro.tmp run data modify storage macro:engine trigger_binds append from storage macro:engine _tc_unbind[0]

# Listeden viarle
data remove storage macro:engine _tc_unbind[0]
function macro:trigger/internal/unbind_filter
