import os
import json

OUTPUT = "build.py"
ROOT   = "./data"
EXTS   = (".mcfunction", ".json", ".mcmeta")

FILES = []

def collect(directory):
    """Bir data/ dizinindeki tüm desteklenen dosyaları toplar."""
    for root, dirs, files in os.walk(directory):
        dirs.sort()
        for name in sorted(files):
            if not name.endswith(EXTS):
                continue
            path = os.path.join(root, name)
            try:
                with open(path, "r", encoding="utf-8") as f:
                    content = f.read()
            except Exception as e:
                print(f"[SKIP] {path}: {e}")
                continue
            FILES.append((path, content))

# pack.mcmeta (root'ta, data/ dışında)
MCMETA = "./pack.mcmeta"
if os.path.isfile(MCMETA):
    try:
        with open(MCMETA, "r", encoding="utf-8") as f:
            content = f.read()
        FILES.append((MCMETA, content))
        print(f"[INFO] pack.mcmeta bulundu.")
    except Exception as e:
        print(f"[SKIP] pack.mcmeta: {e}")
else:
    print(f"[WARN] pack.mcmeta bulunamadı — overlay taraması atlanacak.")

# Ana data/ dizini
collect(ROOT)

# Overlay'ler: pack.mcmeta'daki entries listesinden directory alanları
overlays = []
if os.path.isfile(MCMETA):
    try:
        with open(MCMETA, "r", encoding="utf-8") as f:
            meta = json.load(f)
        entries = meta.get("overlays", {}).get("entries", [])
        overlays = [e["directory"] for e in entries if "directory" in e]
    except Exception as e:
        print(f"[WARN] pack.mcmeta parse hatası: {e}")

for overlay in overlays:
    overlay_data = os.path.join(".", overlay, "data")
    if os.path.isdir(overlay_data):
        before = len(FILES)
        collect(overlay_data)
        print(f"[INFO] Overlay '{overlay}': {len(FILES) - before} dosya.")
    else:
        print(f"[WARN] Overlay '{overlay}' dizini bulunamadı: {overlay_data}")

print(f"[INFO] Toplam {len(FILES)} dosya toplandı.")

with open(OUTPUT, "w", encoding="utf-8") as out:
    out.write("import os\n\n")
    out.write(f"# Auto-generated — {len(FILES)} files\n\n")
    out.write("FILES = [\n")
    for p, c in FILES:
        out.write(f"    ({repr(p)}, {repr(c)}),\n")
    out.write("]\n\n")
    out.write("""\
for path, content in FILES:
    d = os.path.dirname(path)
    if d:
        os.makedirs(d, exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)

print(f"OK — {len(FILES)} dosya çıkarıldı.")
""")

print(f"[OK] {OUTPUT} yazıldı.")
