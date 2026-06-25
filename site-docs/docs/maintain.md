---
icon: lucide/wrench
description: Compact, expand, clean, and inspect Odoo config files.
---

# Maintain

## Compact

Remove keys whose value matches odoo's native default. Trobz-tuned
values are kept, so this shrinks noise without changing the effective
configuration.

```bash
# Preview what would be removed
odoo-config compact --version 17.0 odoo.conf

# Show only the removed keys as a diff table
odoo-config compact --version 17.0 odoo.conf --diff

# Write the result back in place
odoo-config compact --version 17.0 odoo.conf --inplace
```

Full option reference: [CLI reference](CLI.md#odoo-config-compact).

## Expand

Add every option valid for the Odoo version, keeping values already
set. Useful for auditing or making all tunables visible.

```bash
# Preview the fully expanded config
odoo-config expand --version 17.0 odoo.conf

# Show only the keys that would be added
odoo-config expand --version 17.0 odoo.conf --diff

# Write the result back in place
odoo-config expand --version 17.0 odoo.conf --inplace
```

Full option reference: [CLI reference](CLI.md#odoo-config-expand).

## Clean

Remove keys that are unknown to the schema or invalid for the
target version. Safe to run after upgrading Odoo.

```bash
# Preview the cleaned config
odoo-config clean --version 17.0 odoo.conf

# Show only the keys that would be dropped
odoo-config clean --version 17.0 odoo.conf --diff

# Write the result back in place
odoo-config clean --version 17.0 odoo.conf --inplace
```

Full option reference: [CLI reference](CLI.md#odoo-config-clean).

## Explain

Display each option with its current value, help text, and version
default. Useful for auditing or understanding an unfamiliar config.

```bash
# Explain the default config file
odoo-config explain

# Explain a specific file against a version
odoo-config explain --version 16.0 legacy.conf
```

Full option reference: [CLI reference](CLI.md#odoo-config-explain).
