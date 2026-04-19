execute unless function macro:debug/tools/utils/check_all run return 0

$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block) $(mode)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/fill ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(mode)","color":"aqua"}]
