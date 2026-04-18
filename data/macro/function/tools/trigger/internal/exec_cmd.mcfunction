# type:"cmd" → {cmd:"say hello"}
# Security: only executors tagged macro.admin may run this.
execute unless entity @s[tag=macro.admin] run return 0
$execute as @a[nbt=$(uuid)] at @s run $(cmd)
