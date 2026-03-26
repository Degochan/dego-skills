#!/bin/zsh
set -euo pipefail

ROOT_DIR="${0:A:h:h}"

for install_script in "$ROOT_DIR"/*/install.sh; do
  if [[ -f "$install_script" ]]; then
    "$install_script"
  fi
done

printf 'Installed all skills from %s\n' "$ROOT_DIR"
