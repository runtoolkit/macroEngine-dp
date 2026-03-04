# ============================================
# macro:trigger/unbind
# ============================================
# Removes all binds associated with a specific value.
# If multiple binds share the same value, all are removed.
#
# INPUT: macro:input { value:<int> }
#
# EXAMPLE:
# data modify storage macro:input value set value 1
# function macro:trigger/unbind with storage macro:input {}
# ============================================

execute unless data storage macro:engine trigger_binds run return 0

# _tc_unbind temporary listesine kopyala, filtrele
data modify storage macro:engine _tc_unbind set from storage macro:engine trigger_binds
data modify storage macro:engine trigger_binds set value []

$data modify storage macro:engine _tc_uval set value $(value)
function macro:trigger/internal/unbind_filter
data remove storage macro:engine _tc_unbind
data remove storage macro:engine _tc_uval
