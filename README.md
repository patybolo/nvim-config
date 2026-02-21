# Neovim Config (v0.11+)

A lightweight, portable, and minimalist Neovim setup built with **Lua** and **Lazy.nvim**. Clone and go

---

## Features
* **Theme:** [GitHub Theme](https://github.com/projekt0n/github-nvim-theme) (Dark/Light variants).
* **Package Manager:** [Lazy.nvim](https://github.com/folke/lazy.nvim) (with auto-bootstrapping).
* **LSP & Tooling:** [Mason.nvim](https://github.com/williamboman/mason.nvim) for seamless Language Server management.
* **Syntax Highlighting:** [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for advanced code coloring.

---

## Quick Start

### 1. Prerequisites
Before cloning, ensure you have the following installed:
* **Git**
* **Neovim v0.10.0+** (v0.11.x Nightly/Stable recommended).
* A **[Nerd Font](https://www.nerdfonts.com/)** (e.g., JetBrainsMono Nerd Font) for icons.

### 2. Installation

#### Linux / macOS
```bash
# Backup your current config if it exists
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null

# Clone this repository
git clone https://github.com/patybolo/nvim-config.git ~/.config/nvim
```
#### Windows
```
# Backup current config
Rename-Item -Path "$HOME\AppData\Local\nvim" -NewName "nvim.bak" -ErrorAction SilentlyContinue

# Clone this repository
git clone https://github.com/patybolo/nvim-config.git $HOME\AppData\Local\nvim

```

### 3. To compile LSP and Treesitter correctly, install the dependencies:
```
# For Debian/Ubuntu
sudo apt update && sudo apt install -y make gcc ripgrep xclip git unzip curl

# For Arch Linux
sudo pacman -S make gcc ripgrep xclip git unzip curl

# For Windows
scoop install neovim gcc ripgrep
```
## Managing LSPs (Mason)
This setup uses Mason to manage servers without cluttering your Git repo:

- Open Neovim and run :Mason.
- Find your language (e.g., clangd for C++, pyright for Python).
- Press i to install.
- Once installed, ensure the server is enabled in lua/user/plugins.lua inside the lspconfig section.
