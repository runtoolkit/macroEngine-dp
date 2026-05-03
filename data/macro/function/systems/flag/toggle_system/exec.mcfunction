# [MACRO] Internal exec for flag/toggle_system
execute unless data storage macro:engine global{loaded:1b} run return 0

$execute if data storage macro:tick_work _ftgl{enabled:1b} run function macro:core/tick/channel/disable {id:"$(id)"}
$execute if data storage macro:tick_work _ftgl{enabled:0b} run function macro:core/tick/channel/enable {id:"$(id)"}
