---
name: development-preview
description: Launch lemurs TUI in preview mode for interactive dev testing. Use when the user wants to visually test config changes, try out styling, or preview the login screen.
disable-model-invocation: true
---

## Development Preview

Run the lemurs TUI in preview mode using the dev config files. This is for interactive visual testing — not automated tests.

### Files

- `dev/config.toml` — The config to edit. All lemurs options (colors, layout, fields, power controls, etc.).
- `dev/variables.toml` — Define variables referenced in the config as `$variable_name`.
- `dev/preview.sh` — Launches `cargo run -- --preview` with the above files.

The `dev/` directory is gitignored.

### Usage

To launch the TUI preview:

```
./dev/preview.sh
```

To print the fully resolved config (after variable substitution and defaults) without launching the TUI:

```
./dev/preview.sh --show-config
```

Any extra flags are forwarded to the binary, e.g. `./dev/preview.sh --no-log`.

### When to use

- The user wants to see how a config change looks.
- The user is experimenting with colors, modifiers, layout, or variable substitution.
- The user asks to "preview", "try it out", or "see what it looks like".

### Workflow

1. Apply the requested changes to `dev/config.toml` (or `dev/variables.toml` for variables).
2. If the user just wants to verify the config parses correctly, run `./dev/preview.sh --show-config`.
3. If the user wants to see the TUI, tell them to run `./dev/preview.sh` (it requires an interactive terminal).
