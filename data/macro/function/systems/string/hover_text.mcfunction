execute unless data storage macro:engine global{loaded:1b} run return 0

$tellraw $(target) {"text":"$(text)","color":"$(color)","hover_event":{"action":"show_text","value":{"text":"$(hover)","color":"$(hover_color)"}}}
