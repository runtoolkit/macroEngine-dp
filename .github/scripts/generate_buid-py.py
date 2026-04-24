import os
import json

OUTPUT = "build.py"
ROOT   = "./data"
MCMETA = "./pack.mcmeta"
EXTS   = (".mcfunction", ".json", ".mcmeta")

FILES = []
SEEN  = set()


def safe_multiline(s: str) -> str:
    """Triple quote güvenli hale getirir."""
    return s.replace('"""', '\\"""')


def collect(directory):
    for root, dirs, files in os.walk(directory):
        dirs.sort()
        for name in sorted(files):
            if not name.endswith(EXTS):
                continue

            path = os.path.join(root, name)

            if path in SEEN:
                continue
            SEEN.add(path)

            try:
                with open(path, "r", encoding="utf-8") as f:
                    content = f.read()
            except Exception as e:
                print(f"[SKIP] {path}: {e}")
                continue

            FILES.append((path, content))


# -------------------------
# pack.mcmeta ekle
# -------------------------
if os.path.isfile(MCMETA):
    try:
        with open(MCMETA, "r", encoding="utf-8") as f:
            FILES.append((MCMETA, f.read()))
        SEEN.add(MCMETA)
        print("[INFO] pack.mcmeta bulundu.")
    except Exception as e:
        print(f"[SKIP] pack.mcmeta: {e}")
else:
    print("[WARN] pack.mcmeta yok — overlay taraması yok.")


# -------------------------
# Ana data
# -------------------------
collect(ROOT)


# -------------------------
# Overlay parsing
# -------------------------
overlays = []

if os.path.isfile(MCMETA):
    try:
        with open(MCMETA, "r", encoding="utf-8") as f:
            meta = json.load(f)

        entries = meta.get("overlays", {}).get("entries", [])
        overlays = [e["directory"] for e in entries if "directory" in e]

    except Exception as e:
        print(f"[WARN] overlay parse hatası: {e}")


# -------------------------
# Overlay data tarama
# -------------------------
for overlay in overlays:
    overlay_data = os.path.join(".", overlay, "data")

    if os.path.isdir(overlay_data):
        before = len(FILES)
        collect(overlay_data)
        print(f"[INFO] Overlay '{overlay}': {len(FILES) - before} dosya.")
    else:
        print(f"[WARN] Overlay bulunamadı: {overlay_data}")


print(f"[INFO] Toplam {len(FILES)} dosya.")


# -------------------------
# build.py yaz
# -------------------------
with open(OUTPUT, "w", encoding="utf-8") as out:
    out.write("import os\n\n")
    out.write(f"# Auto-generated — {len(FILES)} files\n\n")

    out.write("FILES = [\n")
    for p, c in FILES:
        c_safe = safe_multiline(c)
        out.write(f'    ({repr(p)}, r"""{c_safe}"""),\n')
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
