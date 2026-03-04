# ============================================
# macro:team/list
# ============================================
# Shows all registered teams on the debug channel.
# INPUT: —
# OUTPUT: — (debug ciktisi)
# ============================================

tellraw @a[tag=macro.debug] {"text":"[Team] -- Registered Teams --","color":"aqua"}
tellraw @a[tag=macro.debug] {"nbt":"teams","storage":"macro:engine","interpret":false,"color":"white"}
tellraw @a[tag=macro.debug] {"text":"[Team] ---------------------","color":"aqua"}
