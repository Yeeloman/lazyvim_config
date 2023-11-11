-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.autocmds")
require("config.disable")

-- Set the Neovim default theme
vim.cmd("colorscheme momiji")

-- change line colors
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#FF00BF" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "red" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#00F9FF" })

-- Create an autocmd to call the function when Neovim loses focus
vim.cmd([[autocmd FocusLost * lua setTerminalToNormalMode()]])

-- Define the highlight group for CursorLine and set the background color
-- guibg=#3A4C3E for background color
-- guifg=#ffffff for text color
-- gui uderline
vim.cmd([[
  highlight CursorLine guibg=none gui=bold,standout
]])
-- change the color of selection
vim.cmd([[
  hi Visual guibg=#7108BF guifg=#ffffff
]])
vim.wo.cursorcolumn = true
-- Enable line wrapping
vim.wo.wrap = true

-- Enable linebreak to break lines at word boundaries
vim.wo.linebreak = true

-- Disable list characters (e.g., tabs, trailing spaces)
vim.wo.list = false

-- Use tabs for indentation in C files
vim.api.nvim_exec(
  [[
  autocmd FileType c setlocal shiftwidth=4
  autocmd FileType c setlocal tabstop=4
  autocmd FileType c setlocal noexpandtab
]],
  false
)
-- Change line highlight background color
-- vim.cmd([[highlight! link CursorLine MyCursorLine]])
-- vim.cmd([[highlight mycursorline guibg=#212026 gui=bold,italic]])
--vim.cmd([[highlight mycursorline gui=standout]])

--add terminal and style it
-- require("toggleterm").setup({
--   size = 10,
--   open_mapping = [[<C-t>]],
--   direction = "horizontal",
--   float_opts = {
--     border = "curved",
--     winblend = 5,
--     highlights = {
--       border = "Normal",
--       background = "Normal",
--     },
--   },
-- })
-- live server
require("live-server").setup(opts)
--make lazyvim fully transparent
-- vim.cmd("hi Normal guibg=#1122337A ctermbg=237")

-- Set the encoding to UTF-8
vim.cmd("set encoding=UTF-8")

-- -- to add lua lines
-- local theme_status = require("statustheme")
-- require("lualine").setup({
--   options = { theme = theme_status },
--   ...,
-- })

-- Automatically run mkview on save
vim.api.nvim_exec(
  [[
  autocmd BufWritePost * mkview
]],
  false
)

-- Automatically run loadview on startup
vim.api.nvim_exec(
  [[
  autocmd VimEnter * silent! loadview
]],
  false
)

require("treesj").setup({--[[ your config ]]
})
