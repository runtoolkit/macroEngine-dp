# AME — Güvenlik Notları

## Intent Detection Neden Çalışmaz

Bir datapack fonksiyonu çalıştığında sistem şunu bilemez: **"Bu çağrı kötü niyetli mi?"**

```
tellraw @p {"text":"admin fonksiyonlarını listele"}
```

Bu satır:
- debug çıktısı olabilir ✔️
- bir özelliğin parçası olabilir ✔️
- bilgi sızdırma girişimi olabilir ❗

Minecraft'ın komut motoru bunları birbirinden ayırt edemez. Çünkü `.mcfunction` dosyaları **syntax** doğrular, **semantik niyet** doğrulamaz. Log'a hata yazmak da sorunu çözmez; hata ancak çalıştıktan sonra yazılır, kötü etki zaten gerçekleşmiştir.

### Doğru Model: İzin Tabanlı Guard

"Kötü mü değil mi?" sorusu yerine doğru soru şudur: **"Bu komutu çalıştırma yetkisi var mı?"**

```mcfunction
# YANLIŞ yaklaşım — niyet tespiti
execute if <kötü_durum> run tellraw @a "Hata: izinsiz çağrı"
$kill $(player)   # ← hata loglandı ama kill çoktan çalıştı

# DOĞRU yaklaşım — guard pattern
execute unless function macro:debug/tools/utils/check_all run return 0
$kill $(player)   # ← check_all false dönerse buraya hiç gelinmez
```

`check_all` zinciri sırasıyla şunları doğrular:
1. **load_check** — AME yüklü mü?
2. **perm_check** — executor'ın `macro.admin` tag'i var mı?
3. **input_check** — input storage geçerli mi?

Herhangi biri başarısız olursa fonksiyon `return 0` ile durur, komut **hiç çalışmaz**.

---

## Shell-Script Benzeri Kullanım

`/say` ve `/me` komutları server seviyesinde çıktı üretir ve Minecraft'ı bir shell script motoru gibi davranmaya zorlar: string giriş → komut çıktı → yan etki. Bu model:

- giriş doğrulaması yapmaz
- çağrı bağlamını bilmez
- log'u kirletir

Bu nedenle `console_say` ve `console_me` fonksiyonları kaldırılmıştır.

**Alternatifler:**

| Kaldırılan | Alternatif |
|---|---|
| `api/cmd/console_say` | `systems/string/announce` |
| `api/cmd/console_me` | `systems/log/info` veya `api/cmd/msg` |

---

## Guard Seviyeleri

### Tam Guard (4 satır)
`kill`, `gamemode`, `damage`, `damage_typed`, `tp*` için — executor'ın canlı bir admin oyuncusu olması zorunludur:

```mcfunction
execute unless function macro:debug/tools/utils/check_all run return 0
execute unless entity @s[type=minecraft:player] run return 0
execute unless dimension minecraft:overworld run return 0
execute unless entity @s[gamemode=creative] run return 0
```

### Basit Guard (1 satır)
Diğer tüm `api/cmd/` fonksiyonları için — `macro.admin` tag kontrolü yeterlidir:

```mcfunction
execute unless function macro:debug/tools/utils/check_all run return 0
```

---

## Kapsam

Bu guard'lar `data/macro/function/api/cmd/` ve tüm overlay'lardaki
(`1_20_3/`, `1_20_5/`, `26_1/`) eşdeğer dosyalara uygulanmıştır.
`deop`, `whitelist`, `ban_ip`, `data_remove_*` zaten önceden korunaklıydı.
