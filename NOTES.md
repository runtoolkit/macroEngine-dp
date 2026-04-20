# Güvenlik & Kullanım Notları

## ⚠️ Riskli Kullanım Senaryoları

### Hesap Güvenliği
- Şüpheli yazılımlar token çalma ve oturum ele geçirme riski taşır.
- Microsoft hesabı bu saldırılara karşı savunmasız olabilir.

### Sunucu Kuralları
Çoğu server şunları hile/exploit sayar:
- Dış script kullanımı
- Otomasyon
- AI bot davranışı

### Mod Kaynakları
Crackli veya bilinmeyen modlar şunları içerebilir:
- Zararlı kod
- Backdoor
- Veri sızıntısı

---

## 🔒 Güvenli Kullanım Rehberi

### 1. Güvenilir Platform Kullan
- **Modrinth** veya **CurseForge** kullan.
- Rastgele GitHub / Discord linklerinden mod alma.

### 2. AI Entegrasyonu — Sadece Geliştirme Tarafında

| Kullanım | Durum |
|---|---|
| Datapack yazdırmak | ✅ |
| Kod üretmek | ✅ |
| Otomasyon (CI/CD) | ✅ |
| Oyun içine runtime AI sokmak | ❌ |
| Server'da bot gibi çalıştırmak | ❌ |

### 3. Multiplayer'da Temiz Client
- Sadece **Fabric** veya **Forge** kullan.
- Bilinen, güvenilir modlar.
- `unknown_client.jar` gibi kaynak belirsiz dosyalardan uzak dur.

### 4. Güvenlik Sıralaması
```
Datapack > Mod > Dış Araç
```
Datapack: sandbox içinde, vanilla uyumlu, abuse edilmediği sürece sorun yok.

---

## 💡 Özet

| Risk Faktörü | Açıklama |
|---|---|
| Ban riski | Client hile + exploit + şüpheli mod |
| AI tek başına | Sorun değil |
| Nasıl kullandığın | Her şey |

> **AI + Minecraft = geliştirme aracı olarak mükemmel; oyun içine entegre edersen riskli.**
