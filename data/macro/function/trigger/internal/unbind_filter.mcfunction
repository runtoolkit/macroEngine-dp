# ============================================
# macro:trigger/internal/unbind_filter
# ============================================
# _tc_unbind listesini iterate eder.
# Her eleman için: value _tc_uval ile eşleşmiyorsa trigger_binds'a geri kopyalar.
# ============================================

execute unless data storage macro:engine _tc_unbind[0] run return 0

# Mevcut elemanın değerini oku
execute store result score $tc_fval macro.tmp run data get storage macro:engine _tc_unbind[0].value

# _tc_uval ile karşılaştır
execute store result score $tc_uval macro.tmp run data get storage macro:engine _tc_uval

# Farklıysa → bu bind korunacak, geri ekle
execute unless score $tc_fval macro.tmp = $tc_uval macro.tmp run data modify storage macro:engine trigger_binds append from storage macro:engine _tc_unbind[0]

# Listeden ilerle
data remove storage macro:engine _tc_unbind[0]
function macro:trigger/internal/unbind_filter
