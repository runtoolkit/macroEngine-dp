# macro:systems/security/menu_build [1.21.6 OVERLAY — MACRO]
# Called by menu.mcfunction with storage macro:input {}.
# Builds the dialog with runtime values injected via macro ($).
#
# INPUT (macro args from macro:input):
#   $(sandbox) — 0b / 1b
#   $(trust_players) — 0b / 1b
#   $(cmd_min_level) — int
#   $(sandbox_lvl) — int
#   $(admin_min_level) — int
#   $(admin_override) — 0b / 1b
#   $(perm_level) — int (caller's ame.perm_level)
$data modify storage macro:engine dialog.DIALOG set value {type:"minecraft:multi_action",title:{text:"AME Security",color:"#00AAAA",bold:true},body:{type:"plain_message",contents:{text:"sandbox: $(sandbox) trust_players: $(trust_players)\ncmd_min_level: $(cmd_min_level) sandbox_level: $(sandbox_lvl)\nadmin_min_level: $(admin_min_level) admin_override: $(admin_override)\n\nYour perm_level: $(perm_level)"}},actions:[{type:"run_command",label:{text:"Sandbox ON",color:"green"},command:"/data modify storage macro:engine sandbox set value 1b"},{type:"run_command",label:{text:"Sandbox OFF",color:"red"},command:"/data modify storage macro:engine sandbox set value 0b"},{type:"run_command",label:{text:"Refresh",color:"aqua"},command:"/function macro:systems/security/menu"}],pause:false,can_close_with_escape:true,after_action:"none"}
function macro:api/dialog/load
