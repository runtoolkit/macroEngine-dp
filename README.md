# 🔧 Advanced Macro Engine
**Minecraft Java Edition 1.20.3–1.21.6+ | Multiplayer-Safe | Pure Datapack**

> Current version: **v4.0.2**

> ⚠️ **Migrated from `ToolkitMC/macroEngine-dp`** — This is the new official repository. The old repo is archived (read-only). See the [Migration Guide](../../wiki/Migration-Guide) for details.

---

> 🛡️ **Bu bir Minecraft Datapack'tir.** VirusTotal taramasında temiz çıkmıştır. Bazı antivirüs programları, macro içeren `.mcfunction` dosyaları nedeniyle yanlış pozitif verebilir. Dosyayı yalnızca resmi kaynaktan, yani buradan indirin.

---

## 📚 Documentation

Full API reference, guides, and examples are available in the **[GitHub Wiki](../../wiki)**.

| Page | Description |
|------|-------------|
| [Installation](../../wiki/Installation) | How to install and load the datapack |
| [Storage Architecture](../../wiki/Storage-Architecture) | `macro:engine`, `macro:input`, `macro:output` layout |
| [Overlay System](../../wiki/Overlay-System) | Multi-version overlay structure |
| [Admin Guide](../../wiki/Admin-Guide) | `macro.admin` tag, permissions, debug tools |
| [Changelog](../../wiki/Changelog) | Full version history |

---

## 📦 Installation

```
1. Place macroEngine-dp into <world>/datapacks/
2. /reload
3. /function ame_load:load/yes
4. /tag @s add macro.admin
```

---

## 🏗️ Storage Architecture

```
macro:engine  (persistent data)
├── global
│   ├── version: "v4.0.1"
│   └── tick: <int>
├── players
│   └── Steve { coins:150, level:5, xp:2300, online:1b, ... }
├── queue
│   └── [{func:"mypack:event/end", delay:100}]
├── cooldowns
│   └── Steve { fireball: 2460, dash: 1870 }  ← expiry ticks
└── events
    └── on_join: [{func:"mypack:welcome"}, {func:"mypack:xp_bonus"}]

macro:input   (sending data to a function)
macro:output  (receiving results from a function)
```

---

## 🔍 Predicate Reference

Used with `execute if predicate <id>`.

| Predicate | Description |
|---|---|
| `macro:is_survival` | Player is in survival mode |
| `macro:is_creative` | Player is in creative mode |
| `macro:has_empty_mainhand` | Main hand is empty |
| `macro:is_full_health` | Player is at full health (20 HP) |
| `macro:is_sneaking` | Player is sneaking |
| `macro:is_sprinting` | Player is sprinting |
| `macro:is_burning` | Player is on fire |
| `macro:is_on_ground` | Player is on the ground |
| `macro:is_daytime` | Daytime (0–12000 ticks) |
| `macro:is_raining` | It is raining |
| `macro:is_thundering` | There is a thunderstorm |
| `macro:in_overworld` | Player is in the Overworld |
| `macro:in_nether` | Player is in the Nether |
| `macro:in_end` | Player is in the End |

Full reference: [Predicate Reference](../../wiki/Predicate-Reference)

---

## 📦 Dependencies

### Lantern Load
**Repository:** https://github.com/LanternMC/load  
**License:** BSD 0-Clause (public domain)

Provides deterministic load order, version tracking, and pre/load/post-load hooks.

```mcfunction
# Check if macroEngine is loaded
execute if score macroEngine load.status matches 1.. run say macroEngine is loaded

# Get version (major*10000 + minor*100 + patch → v4.0.1 = 40001)
scoreboard players get macroEngine load.status
```

### StringLib
**Repository:** https://github.com/CMDred/StringLib  
**License:** MIT

Bundled under the `stringlib` namespace. Exposed via `macro:core/lib/string/*`.

| Function | Description |
|---|---|
| `lib/string/concat` | Join a string array |
| `lib/string/find` | Find substring index |
| `lib/string/replace` | Replace substring |
| `lib/string/split` | Split by separator |
| `lib/string/insert` | Insert at index |
| `lib/string/to_lowercase` | Lowercase (A–Z, fast) |
| `lib/string/to_uppercase` | Uppercase (a–z, fast) |
| `lib/string/to_number` | String → numeric NBT |
| `lib/string/to_string` | Value → string |

All functions read from `macro:input` and write to `macro:output string.result`.

```mcfunction
data modify storage macro:input string set value "Hello World"
data modify storage macro:input find set value "World"
data modify storage macro:input replace set value "Everyone"
function macro:core/lib/string/replace
# macro:output string.result → "Hello Everyone"
```

---

## 📡 API Modules

| Module | Wiki |
|--------|------|
| 🕐 Cooldown | [API-Cooldown](../../wiki/API-Cooldown) |
| 📡 Event | [API-Event](../../wiki/API-Event) |
| 🏳️ Flag & State | [API-Flag-State](../../wiki/API-Flag-State) |
| 🪝 Hook | [API-Hook](../../wiki/API-Hook) |
| 🖱️ Interaction | [API-Interaction](../../wiki/API-Interaction) |
| 🎒 Inventory | [API-Inventory](../../wiki/API-Inventory) |
| 📚 Library | [API-Library](../../wiki/API-Library) |
| 🔢 Math | [API-Math](../../wiki/API-Math) |
| 🔐 Permission | [API-Permission](../../wiki/API-Permission) |
| 👤 Player | [API-Player](../../wiki/API-Player) |
| 🔤 String | [API-String](../../wiki/API-String) |
| 🪄 Wand | [API-Wand](../../wiki/API-Wand) |
| 🌍 World & Geo | [API-World-Geo](../../wiki/API-World-Geo) |

---

## 💬 Support

[![Issues](https://img.shields.io/github/issues/runtoolkit/macroEngine-dp?style=for-the-badge)](https://github.com/runtoolkit/macroEngine-dp/issues)
[![Discussions](https://img.shields.io/github/discussions/runtoolkit/macroEngine-dp?style=for-the-badge&logo=github&color=blue)](https://github.com/runtoolkit/macroEngine-dp/discussions)

---

*Advanced Macro Engine v4.0.2 | MC Java 1.20.3–1.21.6+ | Pure Datapack*
