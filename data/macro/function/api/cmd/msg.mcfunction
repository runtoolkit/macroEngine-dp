execute unless data storage macro:engine global{loaded:1b} run return 0

execute unless function macro:debug/tools/utils/check_all run return 0

$tellraw @a[name=$(player),limit=1] {"text":"$(message)","color":"gray","italic":true}
