execute unless data storage macro:engine global{loaded:1b} run return 0

$tellraw $(target) [{"text":"◆── ","color":"$(color)"},{"text":"$(text)","color":"$(color)","bold":true},{"text":" ──◆","color":"$(color)"}]
