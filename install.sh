#!/bin/bash
set -e

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

chmod +x "$SCRIPT_DIR/bin/fresh"

# Create symlinks
ln -sf "$SCRIPT_DIR/bin/fresh" "$INSTALL_DIR/fresh"
ln -sf "$SCRIPT_DIR/bin/fresh" "$INSTALL_DIR/sysupdate"

echo "✔ Successfully installed 'fresh' and 'sysupdate' to $INSTALL_DIR"
echo "  Run 'fresh' or 'sysupdate' from anywhere in your terminal!"
