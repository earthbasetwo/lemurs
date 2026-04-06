#!/bin/bash
# Launch lemurs in preview mode with dev config.
# Usage: ./dev/preview.sh [--show-config]

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

exec cargo run --manifest-path "$PROJECT_DIR/Cargo.toml" -- \
    --preview \
    -c "$SCRIPT_DIR/config.toml" \
    -v "$SCRIPT_DIR/variables.toml" \
    "$@"
