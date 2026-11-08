# 🍃 fresh (v2.0)

A modern, high-aesthetic all-in-one package updater and disk space optimizer for macOS. Updates all your package managers, cleans up orphaned dependencies, purges stale caches, and frees up gigabytes of disk space in a single command.

```text
  __               __  
 / _| _ _ ___ ___ / /_ 
|  _|| '_| -_|_ -|   < 
|_|  |_| |___|___/_n_/ v2.0
 All-in-One macOS Package & Space Optimizer
```

---

## ✨ Features

- **🎨 Modern UI:** Sleek animated spinner indicators, Catppuccin Mocha aesthetic color palette, and a formatted summary card.
- **🍺 Homebrew:** Updates formulae & casks, upgrades packages, removes orphaned dependencies (`brew autoremove`), and purges bottle caches.
- **⚡ NPM Global:** Upgrades `npm` to latest, updates global tools (e.g. `cf`, `@vscode/vsce`), and cleans/verifies cache.
- **🐍 Python / Pip:** Upgrades `pip`, checks and updates outdated global/user packages, and purges pip cache.
- **🧹 Developer & System Caches:** Cleans Xcode `DerivedData`, Homebrew API caches, `~/.cache`, and project `.DS_Store` files.
- **💾 Exact Space Accounting:** Automatically measures disk space before and after, reporting exact space recovered (GB/MB).
- **🔔 Native macOS Notification:** Pops a notification when long runs finish so you don't have to watch the terminal.
- **🎛️ Flexible Options:** Support for `--verbose`, selective `--skip-*` flags, and `--trash`.

---

## 🚀 Installation

```bash
git clone git@github.com:suhaibbinyounis/fresh.git ~/projects/fresh
cd ~/projects/fresh
./install.sh
```

Ensure `~/.local/bin` is in your `$PATH` (already default in your `~/.zshrc`):
```zsh
export PATH="$HOME/.local/bin:$PATH"
```

---

## 💻 Usage

Run the command anywhere in your terminal:

```zsh
fresh
```

Or via alias:

```zsh
sysupdate
```

### Options

| Flag | Description |
| :--- | :--- |
| `-v, --verbose` | Stream full command logs instead of clean spinners |
| `-t, --trash` | Empty the user's macOS Trash as part of maintenance |
| `--skip-brew` | Skip Homebrew update and cleanup |
| `--skip-npm` | Skip NPM global package updates |
| `--skip-pip` | Skip Python / Pip package updates |
| `--skip-cache` | Skip cache and temporary build artifact clearing |
| `--no-notify` | Disable the macOS desktop completion notification |
| `-h, --help` | Display the help menu |

---

## 📄 License

MIT License. See [LICENSE](LICENSE) for details.
