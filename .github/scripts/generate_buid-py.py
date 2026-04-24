import os

OUTPUT = "build.py"
EXTS = (".mcfunction", ".json", ".mcmeta")

FILES = []

for root, dirs, files in os.walk("./data"):
    for name in files:

        if not name.endswith(EXTS):
            continue

        path = os.path.join(root, name)

        try:
            with open(path, "r", encoding="utf-8") as f:
                content = f.read()
        except:
            continue

        # ❗ KRİTİK: güvenli multi-line encode
        safe = content.replace("\\", "\\\\").replace("'''", "\\'\\'\\'")

        FILES.append((path, safe))

with open(OUTPUT, "w", encoding="utf-8") as out:
    out.write("import os\n\nFILES = [\n")

    for p, c in FILES:
        out.write("    (" + repr(p) + ", '''" + c + "'''),\n")

    out.write("]\n\n")

    out.write("""
for path, content in FILES:
    d = os.path.dirname(path)
    if d:
        os.makedirs(d, exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        f.write(content)

print("OK")
""")
