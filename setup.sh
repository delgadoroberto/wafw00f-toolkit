#!/usr/bin/env bash

set -euo pipefail

VENV_DIR=".venv"

echo "[+] Creating Python virtual environment..."

if [[ ! -d "$VENV_DIR" ]]; then
    python3 -m venv "$VENV_DIR"
else
    echo "[+] Virtual environment already exists."
fi

echo "[+] Upgrading pip..."

"$VENV_DIR/bin/python" -m pip install --upgrade pip

echo "[+] Installing dependencies..."

"$VENV_DIR/bin/python" -m pip install -r requirements.txt

echo
echo "[+] Installation completed successfully."
echo
echo "Run wafw00f with:"
echo "  ./run.sh https://example.com"
