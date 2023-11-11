-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<M-s>", "<cmd>SomeCommand<cr>", {})

-- Define a keymapping to execute the current file using Python 3
vim.api.nvim_set_keymap("n", "<Leader>p", ":!python3 %<CR>", { noremap = true, silent = true })

--Reload Configuration:
vim.api.nvim_set_keymap("n", "<f2>", ":source ~/.config/nvim/init.lua<CR>", { noremap = true, silent = true })

-- Open TagbarToggle
vim.api.nvim_set_keymap("n", "<F10>", ":TagbarToggle<CR>", { noremap = true, silent = true })

-- key mapping for goto-preview
vim.api.nvim_set_keymap("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {})
vim.api.nvim_set_keymap("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", {})
vim.api.nvim_set_keymap("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {})
vim.api.nvim_set_keymap("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", {})
vim.api.nvim_set_keymap("n", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", {})

-- key mapîng for Pydoc
vim.api.nvim_set_keymap("n", "doc", "<cmd>Pydocstring<cr>", {})
vim.api.nvim_set_keymap("n", "doa", "<cmd>PydocstringFormat<cr>", {})

-- Map Ctrl-h to move to the left window
vim.api.nvim_set_keymap("n", "<M-h>", "<C-w>h", { noremap = true })
-- Map Ctrl-j to move to the window below
vim.api.nvim_set_keymap("n", "<M-j>", "<C-w>j", { noremap = true })
-- Map Ctrl-k to move to the window above
vim.api.nvim_set_keymap("n", "<M-k>", "<C-w>k", { noremap = true })
-- Map Ctrl-l to move to the right window
vim.api.nvim_set_keymap("n", "<M-l>", "<C-w>l", { noremap = true })

-- Map the arrow keys to do nothing in normal mode
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })

-- For use default preset and it work with dot
vim.keymap.set("n", "<leader>m", require("treesj").toggle)
-- For extending default preset with `recursive = true`, but this doesn't work with dot
vim.keymap.set("n", "<leader>M", function()
  require("treesj").toggle({ split = { recursive = true } })
end)

-- Map Goyo mode to toggle focus
vim.api.nvim_set_keymap("n", "<leader>fa", "<cmd>Goyo<cr>", {})
