-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Automatically source init.lua on startup
vim.api.nvim_exec(
  [[
  augroup AutoSourceInitLua
    autocmd!
    autocmd VimEnter * source ~/.config/nvim/init.lua
  augroup END
]],
  false
)

-- Enable Python indentation
vim.cmd([[autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]])
require("notify").setup({
  background_colour = "#000000",
})
