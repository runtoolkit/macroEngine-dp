# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/other/multi_cmd/internal/exec_func_macro [MACRO]
# INPUT: $(func)
# Executes an arbitrary function path via macro.
# SECURITY: same gate as $$(cmd) — requires ame.perm_level >= cmd_min_level.
# ─────────────────────────────────────────────────────────────────
execute unless function macro:core/security/cmd_gate run return 0
$function $(func)
