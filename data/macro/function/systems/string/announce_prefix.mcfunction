execute unless data storage macro:engine global{loaded:1b} run return 0

$tellraw @a [{"text":"$(prefix) ","color":"$(prefix_color)","bold":true},{"text":"$(message)","color":"$(color)","bold":false}]
