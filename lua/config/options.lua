-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

--plugins manager i suppose
vim.cmd([[
  call plug#begin('~/.config/nvim/plugged')
  Plug 'akinsho/toggleterm.nvim'
  Plug 'majutsushi/tagbar'
  Plug 'tpope/vim-surround'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'rmagatti/goto-preview'
  Plug 'itchyny/vim-cursorword'
  Plug 'gen740/smoothcursor.nvim'
  Plug 'danilamihailov/beacon.nvim'
  Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
  Plug 's1n7ax/nvim-window-picker'
  Plug 'yamatsum/nvim-cursorline'
  " Plug 'lukas-reineke/indent-blankline.nvim'
  " Plug 'edluffy/specs.nvim'
  Plug 'stonelasley/flare.nvim'
  Plug 'shellRaining/hlchunk.nvim'
  Plug 'heavenshell/vim-pydocstring',
  Plug 'dense-analysis/ale',
  Plug 'kshenoy/vim-signature'
  Plug 'dense-analysis/ale'
  Plug 'wfxr/minimap.vim'
  Plug 'barrett-ruth/live-server.nvim'
  " Plug 'mattn/emmet-vim' -- for html stuff
  call plug#end()
]])

--add terminal and style it
require("toggleterm").setup({
  size = 10,
  open_mapping = [[<C-e>]],
  direction = "horizontal",
  float_opts = {
    border = "curved",
    winblend = 5,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

require("hlchunk").setup({})

-- if you jump the cursor colors for a second
-- require("specs").setup({
--   show_jumps = true,
--   min_jump = 30,
--   popup = {
--     delay_ms = 0, -- delay before popup displays
--     inc_ms = 10, -- time increments used for fade/resize effects
--     blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
--     width = 10,
--     winhl = "PMenu",
--     fader = require("specs").linear_fader,
--     resizer = require("specs").slide_resizer,
--   },
--   ignore_filetypes = {},
--   ignore_buftypes = {
--     nofile = true,
--   },
-- })
vim.g.pydocstring_doq_path = "/home/yeeloman/.local/bin/doq"

-- Enable Ale
vim.g.ale_enabled = 1

-- Specify the linters and fixers for Python
vim.g.ale_linters = {
  python = { "flake8" },
  c = { "betty-style", "betty-doc", "gcc" },
}

vim.g.ale_fixers = {
  python = { "autopep8" },
  c = {},
}

-- Auto-format on save
vim.g.ale_fix_on_save = 1
