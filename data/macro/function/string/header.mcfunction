# ============================================
# macro:string/header
# ============================================
# Dekoratif baslik satirı sends.
# Separator karakterleriyle cercevelenmis, koyü metin.
# For section titles, menu headings and separators
# to draw attention.
#
# INPUT: macro:input { target:"<player_or_selector>", text:"<baslik>", color:"<color>" }
#
# EXAMPLE:
# data modify storage macro:input target set value "@a"
# data modify storage macro:input text set value "Envanter"
# data modify storage macro:input color set value "gold"
# function macro:string/header with storage macro:input {}
# Cikti: ◆──── Envanter ────◆  (altin rengi, koyü)
# ============================================

$tellraw $(target) [{"text":"◆── ","color":"$(color)"},{"text":"$(text)","color":"$(color)","bold":true},{"text":" ──◆","color":"$(color)"}]
