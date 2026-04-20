# AME Tick — Channel Execute [MACRO]
# Calls fn directly if condition is empty, otherwise checks predicate first.
# Input: $(fn), $(condition)
#
# condition:"" → always run (no predicate check)
# condition:"macro:is_daytime" → only run when predicate passes

$data modify storage macro:engine _dispatch.func set value "$(fn)"
execute if data storage macro:tick_work channel{condition:""} run function #macro:internal/dispatch
