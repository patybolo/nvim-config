local opt = vim.opt

opt.guicursor = "n-v-c-i:block"
opt.termguicolors = true 
opt.background = "dark"

opt.number = true
opt.relativenumber = true
opt.shiftwidth = 8
opt.tabstop = 8
opt.expandtab = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = { border = "rounded" },
})
