# odoo-config terminal demo
# Showcases: create (with ad-hoc overrides), compare, and explain

# ── Output ────────────────────────────────────────────────────────────────────
Output ./docs/demo.gif

# ── Settings ──────────────────────────────────────────────────────────────────
Set Shell bash
Set TypingSpeed 35ms
Set Width 2300
Set Height 1600
Set FontSize 49
Set FontFamily "JetBrains Mono, Fira Code, monospace"
Set Theme { "name": "odoo-config", "background": "#111111", "foreground": "#f5f5f5", "cursor": "#ea580c", "black": "#2a2a2a", "red": "#ef4444", "green": "#22c55e", "yellow": "#eab308", "blue": "#3b82f6", "magenta": "#d946ef", "cyan": "#06b6d4", "white": "#f5f5f5", "brightBlack": "#52525b", "brightRed": "#f87171", "brightGreen": "#4ade80", "brightYellow": "#facc15", "brightBlue": "#60a5fa", "brightMagenta": "#e879f9", "brightCyan": "#22d3ee", "brightWhite": "#ffffff" }
Set WindowBar Colorful
Set WindowBarSize 60
Set BorderRadius 15
Set Margin 30
Set Padding 40
Set LineHeight 1.3

# ── Bootstrap: install odoo-config from the mounted source ─────────────────────
# vhs image ships python3 only (no pip/uv); bootstrap pip via get-pip, then
# install the local package mounted at /src. Hidden; Sleep past the build.
Hide
Type `python3 -c "import urllib.request as u; u.urlretrieve('https://bootstrap.pypa.io/get-pip.py','/tmp/g.py')" && python3 /tmp/g.py -q --break-system-packages --root-user-action=ignore && pip install /src -q --break-system-packages --root-user-action=ignore`
Enter
Sleep 40s
Type "export PS1='❯ '"
Enter
Type "clear"
Enter
Show

# ── Scene 1: Create a production config for Odoo 17.0 ──────────────────────────
Sleep 800ms
Type "# create: mandatory keys + production preset (ribbon off, cron tightened)"
Sleep 300ms
Enter
Sleep 800ms
Type "odoo-config create --version 17.0 --preset production"
Sleep 500ms
Enter
Sleep 2s

# ── Scene 2: Ad-hoc overrides ─────────────────────────────────────────────────
Hide
Type "clear"
Enter
Show
Sleep 800ms
Type "# ad-hoc overrides: pass any schema key as --<key>=<value>"
Sleep 300ms
Enter
Sleep 800ms
Type "odoo-config create --version 17.0 --preset production \"
Sleep 400ms
Enter
Type "  --http-port=8072 --max-cron-threads=2"
Sleep 500ms
Enter
Sleep 1500ms
Type "grep -E 'http_port|max_cron_threads' odoo.conf"
Sleep 500ms
Enter
Sleep 2s

# ── Scene 3: Compare defaults across versions ─────────────────────────────────
Hide
Type "clear"
Enter
Show
Sleep 800ms
Type "# compare: what changed in defaults between Odoo 16.0 and 17.0"
Sleep 300ms
Enter
Sleep 800ms
Type "odoo-config compare --version 16.0,17.0"
Sleep 500ms
Enter
Sleep 3s

# ── Scene 4: Explain a config file ────────────────────────────────────────────
Hide
Type "clear"
Enter
Show
Sleep 800ms
Type "# explain: each option with its value, help and version default"
Sleep 300ms
Enter
Sleep 800ms
Type "odoo-config explain --version 17.0 odoo.conf"
Sleep 500ms
Enter
Sleep 3s
