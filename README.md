### 🌙 Nvim Config files (v0.10+)
# A lightweight, portable, and aesthetic Neovim setup built with Lua and Lazy.nvim. Designed to be cloned and deployed in seconds on any environment.

## ✨ Features
Theme: GitHub Theme (Dark/Light variants).

Package Manager: Lazy.nvim (with auto-bootstrapping).

LSP & Tooling: Mason.nvim for seamless Language Server management.

Syntax Highlighting: Treesitter for advanced code coloring.

Portability: Consistent "Block" cursor across all modes and cross-platform paths.

## 🚀 Quick Start
1. Prerequisites - Before cloning, ensure you have the following installed:

-	Git
-	Neovim v0.10.0+ (Latest stable recommended).
-	A nerd font

2. Installation

# Backup your current config if it exists
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null

# Clone this repository on Linux
git clone https://github.com/patybolo/nvim-config.git ~/.config/nvim 

# Clone this repository on Windows
git clone https://github.com/patybolo/nvim-config.git $HOME\AppData\Local\nvim

3. To ensure LSP and Treesitter can compile correctly, install these essential dependencies:

# For Debian/Ubuntu
sudo apt update && sudo apt install -y make gcc ripgrep xclip git unzip curl

# For Arch Linux
sudo pacman -S make gcc ripgrep xclip git unzip curl

# For Windows
scoop install neovim gcc ripgrep

## 🛠️ Managing LSPs (Mason)
This setup uses Mason to manage servers without cluttering your Git repo:

- Open Neovim and run :Mason.
- Find your language (e.g., clangd for C++, pyright for Python).
- Press i to install.
- Once installed, ensure the server is enabled in lua/user/plugins.lua inside the lspconfig section.