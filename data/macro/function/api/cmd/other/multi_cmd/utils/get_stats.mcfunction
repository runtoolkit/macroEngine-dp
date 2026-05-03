# ─────────────────────────────────────────────────────────────────
# macro:api/cmd/other/multi_cmd/utils/get_stats
# Mevcut istatistikleri macro:output'a kopyala
# ─────────────────────────────────────────────────────────────────

execute unless data storage macro:engine global{loaded:1b} run return 0

data modify storage macro:output stats set from storage macro:engine _mcmd_stats
