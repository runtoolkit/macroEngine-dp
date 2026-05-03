# Advancement reward: runs when placed_block triggers
# Find the newly placed block in the direction the player is looking

# Revoke advancement (so it can trigger again)
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/placed_block

# Start raycast: begin from player's eyes
execute as @s at @s anchored eyes run function macro:systems/hook/raycast/start
