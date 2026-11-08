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

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo ""
  echo "⚠️  Note: $INSTALL_DIR is not currently in your \$PATH."
  echo "   Add it to your shell config (~/.zshrc or ~/.bashrc):"
  echo "   echo 'export PATH=\"\$HOME/.local/bin:\$PATH\"' >> ~/.zshrc"
  echo "   source ~/.zshrc"
fi

echo ""
echo "✨ Ready! Run 'fresh' or 'sysupdate' from anywhere in your terminal."
