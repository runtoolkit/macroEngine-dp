# Raycast start
# Reset distance counter (max 50 steps = 5 blocks)
execute unless data storage macro:engine global{loaded:1b} run return 0

scoreboard players set @s macro.tmp 0

# Start loop
function macro:systems/hook/raycast/loop
