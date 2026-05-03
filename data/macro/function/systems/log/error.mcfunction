# macro:systems/log/error
# Usage: $function macro:systems/log/error {message:"[System] Something failed"}
# Level: 1 — always shown unless log is off
execute unless data storage macro:engine global{loaded:1b} run return 0

$data modify storage macro:input message set value "$(message)"
data modify storage macro:input level set value "ERROR"
data modify storage macro:input color set value "red"
execute if score #ame.log_level ame.log_level matches 1.. run function macro:systems/log/add with storage macro:input {}
