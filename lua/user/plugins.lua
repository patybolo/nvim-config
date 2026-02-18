-- 1. BOOTSTRAP
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- 2. CONFIGURACIÓN
require("lazy").setup({

  -- TEMA GITHUB
  { 
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup({})
      vim.cmd('colorscheme github_dark')
    end,
  },

  -- LSP: Mason + Mason-LSPConfig + Nvim-LSPConfig
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      -- 1. Setup de Mason (el instalador)
      require("mason").setup()

      -- 2. Setup de Mason-LSPConfig (el puente)
      local mlp = require("mason-lspconfig") -- Guardamos el módulo en 'mlp'
      mlp.setup({
        ensure_installed = { "lua_ls" },
      })

      -- esto por alguna razon no funciona
      --mlp.setup_handlers({
        --function(server_name)
          --require("lspconfig")[server_name].setup({})
        --end,
      --})
    end
  },

  -- TREESITTER (Versión corregida para el nuevo sistema)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- LA SOLUCIÓN AL ERROR: 
      -- Ya no se usa require('nvim-treesitter.configs').setup
      -- Ahora se usa directamente el setup del plugin principal
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "vim", "vimdoc", "markdown" },
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end
  },

  -- TELESCOPE
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
})