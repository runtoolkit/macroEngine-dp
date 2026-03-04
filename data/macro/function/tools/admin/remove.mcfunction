execute unless entity @s[tag=macro.admin] run return 0

# Admin yetkisini al
$tag $(NAME) remove macro.admin
tellraw @s {"text":"Admin permission revoked:","color":"red"}
$tellraw @s [{"text":"$(NAME)","color":"aqua"}]
