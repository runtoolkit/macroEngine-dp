# ============================================
# macro:log/show
# ============================================
# Log girişlerini @s'e gösterir.
# Her giriş için $tellraw çağrılır — renkli, interpret:false, doğrudan storage'dan.
# ============================================

execute unless data storage macro:engine log_display[0] run tellraw @s {"text":"[Log] Kayıt yok.","color":"gray","italic":false}
execute unless data storage macro:engine log_display[0] run return 0

function macro:lib/input_push
data modify storage macro:engine _felist_input set from storage macro:engine log_display
data modify storage macro:input func set value "macro:log/internal/print_entry"
function macro:lib/for_each_list with storage macro:input {}
function macro:lib/input_pop
