#!/bin/bash
set -e

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

# Detect if running from an existing repository or piped via curl
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || echo "")"

if [ -n "$SCRIPT_DIR" ] && [ -f "$SCRIPT_DIR/bin/fresh" ]; then
  REPO_DIR="$SCRIPT_DIR"
else
  REPO_DIR="$HOME/projects/fresh"
  if [ ! -d "$REPO_DIR" ]; then
    echo "📦 Cloning fresh to $REPO_DIR..."
    mkdir -p "$HOME/projects"
    git clone https://github.com/suhaibbinyounis/fresh.git "$REPO_DIR"
  fi
fi

chmod +x "$REPO_DIR/bin/fresh"

# Create symlinks
ln -sf "$REPO_DIR/bin/fresh" "$INSTALL_DIR/fresh"
ln -sf "$REPO_DIR/bin/fresh" "$INSTALL_DIR/sysupdate"

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
