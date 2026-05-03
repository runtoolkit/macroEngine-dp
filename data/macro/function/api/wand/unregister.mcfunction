# ─────────────────────────────────────────────────────────────────
# macro:api/wand/unregister
# Removes all wand binds belonging to a specific tag.
#
# INPUT (storage macro:input):
# tag → wand tag to remove
#
# EXAMPLE:
# data modify storage macro:input tag set value "fire_wand"
# function macro:api/wand/unregister
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

function macro:api/wand/internal/unregister_exec with storage macro:input {}
