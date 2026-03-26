#!/bin/zsh
set -euo pipefail

SOURCE_DIR="${0:A:h}"
TARGET_DIR="$HOME/.codex/skills/lafragata-carousel"

mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR/SKILL.md" "$TARGET_DIR/SKILL.md"
cp "$SOURCE_DIR/cta_rotation.json" "$TARGET_DIR/cta_rotation.json"

printf 'Installed lafragata-carousel to %s\n' "$TARGET_DIR"
