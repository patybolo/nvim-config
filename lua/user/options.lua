local opt = vim.opt

-- Cursor como bloque sólido en todos los modos
-- i = insert, v = visual, c = command, n = normal
opt.guicursor = "n-v-c-i:block"

-- Recomendado para temas modernos
opt.termguicolors = true 
opt.background = "dark" -- o "light" si prefieres el modo claro

-- Otras opciones útiles para empezar
opt.number = true         -- Números de línea
opt.relativenumber = true -- Números relativos
opt.shiftwidth = 8        -- Tamaño de la indentación
opt.tabstop = 8
opt.expandtab = true      -- Espacios en lugar de tabs

vim.diagnostic.config({
  virtual_text = true, -- Esto muestra el error en texto tenue a la derecha
  signs = true,
  update_in_insert = false, -- No molestar mientras escribes
  underline = true,
  severity_sort = true,
  float = { border = "rounded" },
})
