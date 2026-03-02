$scoreboard players set @s macro.dialog_load $(cooldown)

# BUG FIX v1.0.2: Minecraft dialog, buton tıklamasında otomatik kapanır ama
# macro:dialog/close çağrılmaz — macro.dialog_opened tag'i oyuncuda kalır.
# Yeni bir loading başlatmadan önce tag'i temizle; aksi hâlde
# open → show akışındaki guard "dialog zaten açık" sanıp return 0 yapar
# ve oyuncu sonsuza kadar loading ekranında kalır.

$dialog show @s {"type":"minecraft:notice","title":{"text": "" },"body":{"type":"minecraft:plain_message","contents":{"text":"\n\n\n\nYükleniyor...\n","extra":["\n",{"text":"$(cooldown)","color":"green","bold":false,"italic":false},{"text":" saniye bekleyin.","color":"aqua","bold":false,"italic":false}],"bold":true,"italic":false}},"can_close_with_escape":false,"pause":false,"after_action":"none","action":{"label":{"text": "İptal"},"action":{"type":"minecraft:run_command","command":"/function macro:dialog/close"}}}

tag @s remove macro.dialog_opened
tag @s add macro.dialog_opened
tag @s add macro.dialog_closed
