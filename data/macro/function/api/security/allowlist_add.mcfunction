# ─────────────────────────────────────────────────────────────────
# macro:api/security/allowlist_add [MACRO]
# Appends a command prefix to macro:engine security.sandbox_allowlist.
# Only commands whose string representation starts with an allowlisted
# prefix will be permitted in sandbox mode (enforcement: future release).
#
# INPUT (macro args):
#   $(prefix) — command prefix string, e.g. "say" or "give"
#
# EXAMPLE:
#   function macro:api/security/allowlist_add {prefix:"say"}
# ─────────────────────────────────────────────────────────────────
execute unless data storage macro:engine global{loaded:1b} run return 0

$data modify storage macro:engine security.sandbox_allowlist append value "$(prefix)"
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"security/allowlist_add ","color":"aqua"},{"text":"$(prefix)","color":"green"}]
