#!/usr/bin/env bash

set -euo pipefail

VENV_DIR=".venv"

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <target> [options]"
    echo
    echo "Example:"
    echo "  $0 https://example.com"
    exit 1
fi

if [[ ! -x "$VENV_DIR/bin/wafw00f" ]]; then
    echo "[!] wafw00f is not installed."
    echo "[!] Run ./setup.sh first."
    exit 1
fi

"$VENV_DIR/bin/wafw00f" "$@"
