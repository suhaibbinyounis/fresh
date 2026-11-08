<div align="center">

# 🍃 fresh

**The modern, all-in-one package updater and disk space optimizer for macOS.**

Keep your Mac clean, fast, and up-to-date with a single command.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-white?logo=apple&logoColor=black)](https://apple.com)
[![Shell: Zsh](https://img.shields.io/badge/Shell-Zsh-f38ba8.svg)](https://www.zsh.org/)
[![Theme: Catppuccin](https://img.shields.io/badge/Theme-Catppuccin_Mocha-cba6f7.svg)](https://github.com/catppuccin/catppuccin)

```text
  __               __  
 / _| _ _ ___ ___ / /_ 
|  _|| '_| -_|_ -|   < 
|_|  |_| |___|___/_n_/ v2.0
 All-in-One macOS Package & Space Optimizer
```

</div>

---

## 💡 Why `fresh`?

Over time, macOS developer machines accumulate gigabytes of stale caches, orphaned package dependencies, outdated build artifacts, and old runtime wheels:
- **Homebrew** keeps outdated formula versions and downloaded `.bottle` caches indefinitely.
- **NPM** accumulates gigabytes in its global module cache.
- **Pip / Python** caches old wheel downloads across releases.
- **Xcode & Build Tools** silently horde massive `DerivedData` caches.

Updating them usually means running 6–8 separate commands (`brew update`, `brew upgrade`, `brew cleanup`, `npm update -g`, `npm cache clean`, `pip cache purge`, etc.) and sitting through walls of noisy terminal output.

**`fresh` solves this in one command.** It executes all maintenance with animated spinners, suppresses noise, reports exact disk space recovered, and pings you with a native macOS notification when finished.

---

## 🖥️ Terminal Preview

```text
  __               __  
 / _| _ _ ___ ___ / /_ 
|  _|| '_| -_|_ -|   < 
|_|  |_| |___|___/_n_/ v2.0
 All-in-One macOS Package & Space Optimizer

✔ 🍺 Homebrew: Formulae & casks up to date
✔ 📦 Homebrew: Packages upgraded
✔ 🧹 Homebrew: Orphaned dependencies removed
✔ 💾 Homebrew: Old bottles and caches purged
✔ ⚡ NPM: Global packages updated
✔ 🗄️ NPM: Cache verified and compressed
✔ 🐍 Python: Pip and packages upgraded
✔ 🗑️ Python: Pip wheel cache purged
✔ 🧹 System: Xcode & developer caches cleared

╭────────────────────────────────────────────────────────╮
│  ✨  Maintenance Complete!                            │
├────────────────────────────────────────────────────────┤
│  ⏱  Time Elapsed:   28s                               │
│  💾 Space Recovered: 3.12 GB                           │
│  🍺 Homebrew:        Updated & Cleaned                 │
│  ⚡ NPM Global:      Updated & Cache Purged            │
│  🐍 Python / Pip:    Up to Date & Cache Purged         │
│  🧹 System Caches:   Xcode, Brew & Temp Cleared        │
╰────────────────────────────────────────────────────────╯
```

---

## ⚡ Quick Start & Installation

### Step 1: Clone the repository
Clone `fresh` into your projects or tools directory:

```bash
git clone https://github.com/suhaibbinyounis/fresh.git ~/projects/fresh
cd ~/projects/fresh
```

### Step 2: Run the installer
Run the included `install.sh` script to link `fresh` to your `~/.local/bin`:

```bash
./install.sh
```

### Step 3: Verify your `$PATH`
Ensure `~/.local/bin` is in your `PATH`. If you don't already have it in your `~/.zshrc`, add it:

```zsh
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

That's it! You can now run `fresh` from any directory.

---

## 💻 Usage & Examples

### Standard Run
Run all updates, purge caches, and recover disk space:
```zsh
fresh
```
*(You can also use the shorthand alias `sysupdate`).*

---

### Clean + Empty macOS Trash
Include emptying the user's macOS Trash during cleanup:
```zsh
fresh --trash
# or
fresh -t
```

---

### Verbose Mode (Live Streaming Logs)
If you prefer seeing real-time package manager logs instead of spinners:
```zsh
fresh --verbose
# or
fresh -v
```

---

### Selective Skipping
In a hurry and want to skip specific subsystems?

```zsh
# Skip Homebrew (e.g. only update npm and python)
fresh --skip-brew

# Skip NPM global packages
fresh --skip-npm

# Skip Python / Pip
fresh --skip-pip

# Only run updates without purging caches
fresh --skip-cache

# Disable macOS desktop notification
fresh --no-notify
```

---

## 🔍 What `fresh` Cleans Under the Hood

| Subsystem | Actions Performed |
| :--- | :--- |
| **Homebrew** | Runs `brew update` + `brew upgrade` + `brew autoremove`. Purges old bottle archives via `brew cleanup --prune=all` and deletes `$(brew --cache)`. |
| **NPM Global** | Upgrades `npm` to latest, updates global packages (`npm update -g`), and runs cache garbage collection (`npm cache clean --force` / `npm cache verify`). |
| **Python / Pip** | Upgrades `pip` to latest, upgrades outdated pip packages, and runs `pip3 cache purge`. |
| **Developer Caches** | Purges Xcode `~/Library/Developer/Xcode/DerivedData`, Homebrew API cache, `~/.cache`, and project `.DS_Store` files. |
| **User Trash** | Empties `~/.Trash` when the `--trash` flag is provided. |

---

## ❓ FAQ & Troubleshooting

#### Does `fresh` require `sudo` / admin privileges?
**No.** `fresh` operates 100% within your user permissions (`~/.local/bin`, Homebrew prefix, user caches). It never requires or asks for your system password.

#### How do I update `fresh`?
Simply pull the latest changes from the repo:
```bash
cd ~/projects/fresh
git pull
```
Because the binary in `~/.local/bin` is symlinked to your project repository, any updates are applied immediately.

#### How do I uninstall `fresh`?
Remove the symlinks and delete the folder:
```bash
rm -f ~/.local/bin/fresh ~/.local/bin/sysupdate
rm -rf ~/projects/fresh
```

---

## 📄 License

Distributed under the **MIT License**. See [LICENSE](LICENSE) for more information.
