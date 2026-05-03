# macro:core/security/multi_type_check_macro [MACRO]
# Called with storage macro:engine {} — reads $(_mcmd_type_tmp) from engine.
# Checks if the type exists as a key in security.multi_type_allowlist.
$execute if data storage macro:engine security.multi_type_allowlist{$(_mcmd_type_tmp):1b} run return 1
function macro:core/security/type_violation
return 0
