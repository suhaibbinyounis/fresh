<div align="center">

# 🍃 fresh

### **The Modern, Multi-Ecosystem Package Updater & Disk Optimizer for macOS**

*One command to upgrade every package manager, secure your TLS trust store, purge stale developer caches, and reclaim gigabytes of disk space.*

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-white?logo=apple&logoColor=black)](https://apple.com)
[![Apple Silicon: Optimized](https://img.shields.io/badge/Apple_Silicon-M1_|_M2_|_M3_|_M4-orange?logo=apple)](https://apple.com)
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

## ✨ Highlights

- 🚀 **Zero-Config Autodetection:** Discovers whatever developer toolchains you have installed (Homebrew, NPM, PNPM, Yarn, Bun, Deno, Pip, Pipx, uv, Conda, Rust, Go, Java, PHP, Docker) and optimizes them without manual configuration.
- 🔒 **TLS & Root CA Security:** Automatically updates Mozilla Root CA certificates, rehashes OpenSSL 3 & 4 directories, and upgrades Python `certifi` to protect against expired, compromised, or revoked SSL authorities.
- 🔋 **Battery-First & Apple Silicon Native:** Configured with macOS `ProcessType: Background` to run exclusively on low-power **Efficiency cores (E-cores)** with low-priority I/O. Automatically pauses background maintenance if battery is below 25%.
- 🤖 **Zero-Touch Startup Maintenance:** Optional macOS `launchd` integration that runs silently when you log in and connect to the internet, then notifies you via desktop banner.
- 🎨 **Catppuccin Mocha UI:** Beautiful animated spinners, real-time status icons, and an aligned summary card—zero terminal spam or log clutter.

---

## ⚡ Quick Start (1-Line Install)

Open your terminal and paste:

```bash
curl -fsSL https://raw.githubusercontent.com/suhaibbinyounis/fresh/main/install.sh | bash
```

<details>
<summary><b>Or install manually via Git Clone</b></summary>

```bash
# Clone the repository
git clone https://github.com/suhaibbinyounis/fresh.git ~/projects/fresh

# Run installer (creates symlinks in ~/.local/bin)
cd ~/projects/fresh && ./install.sh
```

Ensure `~/.local/bin` is in your `$PATH` (standard on modern macOS):
```zsh
export PATH="$HOME/.local/bin:$PATH"
```
</details>

---

## 🖥️ Terminal Experience

```text
    ____               __  
   / __/______  _____/ /_ 
  / /_/ ___/ _ \/ ___/ __ \
 / __/ /  /  __(__  ) / / /
/_/ /_/   \___/____/_/ /_/ 

All-in-One macOS Package & Space Optimizer v2.1

✔ 🍺 Homebrew: Formulae & casks up to date
✔ 📦 Homebrew: Packages upgraded
✔ 🧹 Homebrew: Orphaned dependencies removed
✔ 💾 Homebrew: Old bottles and caches purged
✔ 🔒 Security: CA certificate bundle & OpenSSL trust synced
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
│  ⏱  Time Elapsed:   28s                               │
│  💾 Space Recovered: 3.12 GB                           │
│  🍺 Homebrew         Updated & Cleaned                 │
│  🔒 CA Trust         Bundle & Certs Synced             │
│  ⚡ NPM Global       Updated & Cache Purged            │
│  🐍 Python / Pip     Up to Date & Cache Purged         │
│  🦀 Rust / Rustup    Toolchains Updated                │
│  🐹 Go               Module & Build Cache Cleared      │
│  🧹 System Caches    Xcode, Wrangler & Temp Cleared    │
╰────────────────────────────────────────────────────────╯
```

---

## 🧰 Supported Ecosystems

`fresh` checks your environment in milliseconds. If a tool isn't installed, it skips it cleanly without wasting CPU cycles.

| Ecosystem | Detected Tools | Maintenance Actions Performed |
| :--- | :--- | :--- |
| **🔒 Security & TLS** | `ca-certificates`, `certifi`, OpenSSL | Upgrades Mozilla root CA bundle, rehashes OpenSSL 3 & 4 hashes, upgrades `certifi` |
| **🍺 Homebrew** | `brew` | Formulae & casks updated, packages upgraded, orphans autoremoved, bottles purged |
| **⚡ JavaScript / TypeScript** | `npm`, `pnpm`, `yarn`, `bun`, `deno` | Global CLIs upgraded, runtime versions updated, package stores & caches pruned |
| **🐍 Python** | `pip3`, `pipx`, `uv`, `conda` | Core tools updated, outdated packages upgraded, wheel & package caches purged |
| **☕ Java / JVM** | `sdkman`, `gradle` | SDKMAN candidates upgraded, Gradle wrapper & build caches purged |
| **🦀 Rust** | `rustup`, `cargo` | Toolchains updated via `rustup`, Cargo registry & git checkouts cleaned |
| **🐹 Go** | `go` | Module cache, test cache, and build cache cleaned (`go clean -cache`) |
| **🐘 PHP** | `composer` | Global tools updated, composer cache cleared |
| **🍎 Apple / macOS** | `softwareupdate`, `mas` | Optional macOS system updates (`-m`), Mac App Store app upgrades |
| **🐳 Containers** | `docker`, `podman` | Dangling images and build caches pruned (only runs if daemon is active) |
| **🧹 System & Developer** | Xcode, Wrangler, Trash | Xcode `DerivedData`, `~/.cache`, `.DS_Store` files, and optional Trash emptying (`-t`) |

---

## 💻 CLI Cheat Sheet

```zsh
# 🟢 Standard run (updates all package managers & purges caches)
fresh

# 🍎 Include macOS system software updates
fresh --macos
# or: fresh -m

# 🗑️ Include emptying macOS user Trash
fresh --trash
# or: fresh -t

# 🤖 Enable automated background maintenance on boot & internet connect
fresh --enable-autostart

# 🛑 Disable automated background maintenance
fresh --disable-autostart

# 📺 Stream raw package manager output instead of animated spinners
fresh --verbose
# or: fresh -v

# ⚡ Skip specific subsystems when in a rush
fresh --skip-brew
fresh --skip-node
fresh --skip-python
fresh --skip-rust
fresh --skip-go
fresh --skip-cache
```

---

## 🔋 Battery & Energy Architecture

`fresh` is specifically optimized for Apple Silicon (M1, M2, M3, M4) and MacBook battery health:

1. **Zero Standing Footprint:** `fresh` is **not a daemon**. It runs once, finishes in seconds, and completely exits (0% CPU, 0 MB RAM when idle).
2. **Efficiency Core Scheduling:** The LaunchAgent runs under macOS `ProcessType: Background`, instructing Grand Central Dispatch to schedule tasks exclusively on low-power **E-cores**.
3. **Throttled Disk I/O:** Configured with `LowPriorityIO` and `Nice: 15`, ensuring background tasks yield immediately to user applications.
4. **Low-Battery Safeguard:** If running on battery power and charge is below **25%**, automated startup maintenance automatically cancels itself to preserve battery.
5. **3-Hour Cooldown:** Automated maintenance enforces a strict 3-hour minimum interval, preventing repeated runs if your laptop lid is repeatedly opened and closed.

---

## ❓ FAQ

#### Does `fresh` require `sudo` / admin privileges?
**No.** `fresh` operates 100% within standard user permissions. It never asks for, requires, or logs your system password.

#### How do I update `fresh`?
Pull the latest release from the repository:
```bash
cd ~/projects/fresh && git pull
```
Because the binary in `~/.local/bin` is symlinked directly to your project repository, all updates are immediately active.

#### How do I uninstall `fresh`?
```bash
# 1. Disable autostart if active
fresh --disable-autostart

# 2. Remove symlinks and project folder
rm -f ~/.local/bin/fresh ~/.local/bin/sysupdate
rm -rf ~/projects/fresh
```

---

## 🤝 Contributing & Community

Contributions, suggestions, and feedback are welcome!
- Found a bug or want support for another package manager? Open an [Issue](https://github.com/suhaibbinyounis/fresh/issues).
- Want to contribute code? Submit a [Pull Request](https://github.com/suhaibbinyounis/fresh/pulls).

⭐ **If `fresh` saved you gigabytes of disk space, please consider giving it a star on GitHub!**

---

## 📄 License

Distributed under the **MIT License**. See [LICENSE](LICENSE) for details.
