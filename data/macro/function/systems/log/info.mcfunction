# macro:systems/log/info
# Usage: $function macro:systems/log/info {message:"[System] Something happened"}
# Level: 3
execute unless data storage macro:engine global{loaded:1b} run return 0

$data modify storage macro:input message set value "$(message)"
data modify storage macro:input level set value "INFO"
data modify storage macro:input color set value "gray"
execute if score #ame.log_level ame.log_level matches 3.. run function macro:systems/log/add with storage macro:input {}
