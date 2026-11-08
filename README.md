<div align="center">

# 🍃 fresh

**The modern, multi-ecosystem package updater and disk space optimizer for macOS.**

Autodetects your installed developer toolchains, upgrades packages, purges stale caches, and keeps your entire system spotless in a single command.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-white?logo=apple&logoColor=black)](https://apple.com)
[![Shell: Zsh](https://img.shields.io/badge/Shell-Zsh-f38ba8?logo=zsh&logoColor=white)](https://www.zsh.org/)
[![Theme: Catppuccin](https://img.shields.io/badge/Theme-Catppuccin_Mocha-cba6f7?logo=catppuccin&logoColor=white)](https://github.com/catppuccin/catppuccin)

```text
    ____               __  
   / __/______  _____/ /_ 
  / /_/ ___/ _ \/ ___/ __ \
 / __/ /  /  __(__  ) / / /
/_/ /_/   \___/____/_/ /_/ 

All-in-One macOS Package & Space Optimizer
```

</div>

---

## 💡 Why `fresh`?

Modern development means juggling multiple package managers and language toolchains. Over time, they hoard tens of gigabytes in forgotten caches, dead dependencies, and stale artifacts:
- **Homebrew:** Keeps old bottles and formula downloads.
- **Node.js (NPM / PNPM / Yarn / Bun / Deno):** Expands unbounded global module stores and cache trees.
- **Python (Pip / Pipx / uv / Conda):** Accumulates cached wheel downloads and outdated libraries.
- **Rust (Rustup / Cargo):** Leaves behind heavy git checkouts and registry caches.
- **Go:** Retains massive compilation and module download caches.
- **Apple & Xcode:** Hordes gigabytes of `DerivedData` build artifacts.

**`fresh` autodetects whatever you have installed** and optimizes all of them in one command with zero configuration. If a tool isn't installed on your machine, `fresh` cleanly skips it without wasting a millisecond.

---

## 🧰 Supported Ecosystems (Autodetected)

| Ecosystem | Detected Tools | Maintenance Actions Performed |
| :--- | :--- | :--- |
| **🔒 Security & TLS** | `ca-certificates`, `certifi`, OpenSSL | Syncs Mozilla root CA bundle, rehashes OpenSSL hashes, upgrades Python `certifi` |
| **🍎 Apple / macOS** | `softwareupdate`, `mas` | Optional macOS system updates (`-m`), Mac App Store app upgrades |
| **🍺 Homebrew** | `brew` | Formulae & casks updated, packages upgraded, orphans autoremoved, bottles purged |
| **⚡ JavaScript / TypeScript** | `npm`, `pnpm`, `yarn`, `bun`, `deno` | Global CLIs upgraded, runtime versions updated, package stores & caches pruned |
| **🐍 Python** | `pip3`, `pipx`, `uv`, `conda` | Core tools updated, outdated packages upgraded, wheel & package caches purged |
| **☕ Java / JVM** | `sdkman`, `gradle` | SDKMAN candidates upgraded, Gradle wrapper & build caches purged |
| **🦀 Rust** | `rustup`, `cargo` | Toolchains updated via `rustup`, Cargo registry & git caches cleaned |
| **🐹 Go** | `go` | Module cache, test cache, and build cache cleaned (`go clean -cache`) |
| **🐘 PHP** | `composer` | Global tools updated, composer cache cleared |
| **🐳 Containers** | `docker`, `podman` | Dangling images and build caches pruned (only runs if daemon is active) |
| **🧹 System & Developer** | Xcode, Trash | Xcode `DerivedData`, `~/.cache`, `.DS_Store` files, and optional Trash emptying (`-t`) |

---

## 🖥️ Terminal Preview

```text
    ____               __  
   / __/______  _____/ /_ 
  / /_/ ___/ _ \/ ___/ __ \
 / __/ /  /  __(__  ) / / /
/_/ /_/   \___/____/_/ /_/ 

All-in-One macOS Package & Space Optimizer

✔ 🍺 Homebrew: Formulae & casks up to date
✔ 📦 Homebrew: Packages upgraded
✔ 🧹 Homebrew: Orphaned dependencies removed
✔ 💾 Homebrew: Old bottles and caches purged
✔ ⚡ NPM: Global packages updated
✔ 🗄️ NPM: Cache verified and compressed
✔ 🐍 Python: Pip and packages upgraded
✔ 🗑️ Python: Pip wheel cache purged
✔ 🦀 Rust: Toolchains updated via rustup
✔ 🐹 Go: Module and build caches cleared
✔ 🧹 System: Xcode & developer caches cleared

╭────────────────────────────────────────────────────────╮
│  ✨  Maintenance Complete!                            │
├────────────────────────────────────────────────────────┤
│  ⏱  Time Elapsed:   32s                               │
│  💾 Space Recovered: 4.85 GB                           │
│  🍺 Homebrew         Updated & Cleaned                 │
│  ⚡ NPM Global       Updated & Cache Purged            │
│  🐍 Python / Pip     Up to Date & Cache Purged         │
│  🦀 Rust / Rustup    Toolchains Updated                │
│  🐹 Go               Module & Build Cache Cleared      │
│  🧹 System Caches    Xcode, Brew & Temp Cleared        │
╰────────────────────────────────────────────────────────╯
```

---

## ⚡ Quick Start & Installation

```bash
# 1. Clone into your projects or tools directory
git clone https://github.com/suhaibbinyounis/fresh.git ~/projects/fresh

# 2. Run the installer (creates symlinks in ~/.local/bin)
cd ~/projects/fresh && ./install.sh
```

Ensure `~/.local/bin` is in your `$PATH` (already default in macOS if configured in `~/.zshrc`):
```zsh
export PATH="$HOME/.local/bin:$PATH"
```

---

## 💻 Usage & Options

### Standard Run
Autodetects your installed languages and runs all updates and cache cleanups:
```zsh
fresh
```
*(Or use the alias `sysupdate`).*

---

### Update macOS System Software (`-m`, `--macos`)
Check and install recommended macOS system software updates alongside your developer packages:
```zsh
fresh --macos
# or
fresh -m
```

---

### Empty macOS User Trash (`-t`, `--trash`)
Include emptying the user's macOS Trash during cleanup:
```zsh
fresh --trash
# or
fresh -t
```

---

### Verbose Mode (`-v`, `--verbose`)
See real-time package manager output instead of animated spinners:
```zsh
fresh --verbose
```

---

### Selective Skipping
In a hurry and want to skip specific ecosystems?
```zsh
fresh --skip-brew     # Skip Homebrew
fresh --skip-node     # Skip NPM, PNPM, Yarn, Bun, Deno
fresh --skip-python   # Skip Pip, Pipx, uv, Conda
fresh --skip-rust     # Skip Rustup and Cargo
fresh --skip-go       # Skip Go
fresh --skip-cache    # Skip developer & temporary cache clearing
fresh --no-notify     # Disable desktop completion notification
```

---

## ❓ FAQ & Troubleshooting

#### Does `fresh` require `sudo` / admin privileges?
**No.** `fresh` operates 100% within your user permissions. It never asks for or requires your system password.

#### How do I update `fresh`?
Simply pull the latest changes:
```bash
cd ~/projects/fresh && git pull
```
Because the executable in `~/.local/bin` is symlinked directly to your project repository, all updates apply immediately.

---

## 📄 License

Distributed under the **MIT License**. See [LICENSE](LICENSE) for details.
