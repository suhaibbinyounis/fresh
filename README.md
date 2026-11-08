# 🍃 fresh

A fast, all-in-one CLI maintenance tool for macOS that updates all your package managers, cleans up orphaned dependencies, purges stale caches, and frees up gigabytes of disk space in a single command.

```text
    ____              __  
   / __/______  _____/ /_ 
  / /_/ ___/ _ \/ ___/ __ \
 / __/ /  /  __(__  ) / / /
/_/ /_/   \___/____/_/ /_/ 

All-in-One System Maintenance & Package Updater
```

---

## ⚡ What it Does

In one command, `fresh`:
1. **Homebrew (`brew`):**
   - Updates formulae and casks (`brew update`)
   - Upgrades installed packages (`brew upgrade`)
   - Removes unused/orphaned dependencies (`brew autoremove`)
   - Cleans old bottles and bottle download caches (`brew cleanup --prune=all`)
2. **NPM Global Packages:**
   - Upgrades `npm` to the latest release
   - Upgrades all global npm packages (e.g. `cf`, `@vscode/vsce`)
   - Verifies and purges npm's internal cache
3. **Python / Pip (`pip3`):**
   - Upgrades `pip` to the latest version
   - Identifies and upgrades any outdated packages
   - Purges the pip wheel/download cache
4. **Developer Caches:**
   - Cleans Xcode `DerivedData`
   - Cleans user `~/.cache` and Homebrew API cache
5. **Disk Space Reporting:**
   - Measures free disk space before and after, reporting the exact amount of disk space freed.

---

## 🚀 Installation

```bash
git clone git@github.com:suhaibbinyounis/fresh.git ~/projects/fresh
cd ~/projects/fresh
./install.sh
```

Ensure `~/.local/bin` is in your `$PATH` (default in your `~/.zshrc`):
```zsh
export PATH="$HOME/.local/bin:$PATH"
```

---

## 💻 Usage

Simply run:

```zsh
fresh
```

Or use the alias:

```zsh
sysupdate
```

---

## 📄 License

MIT License. See [LICENSE](LICENSE) for details.
