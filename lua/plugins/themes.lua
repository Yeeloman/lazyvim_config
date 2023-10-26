local colorscheme = require("lazyvim.plugins.colorscheme")
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  --add badwolf
  { "sjl/badwolf" },
  --add everforest
  { "sainnhe/everforest" },
  { "cseelus/vim-colors-lucid" },
  { "liuchengxu/space-vim-dark" },
  { "challenger-deep-theme/vim" },
  { "ayu-theme/ayu-vim" },
  { "kyoh86/momiji" },
  { "NLKNguyen/papercolor-theme" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      --colorscheme = "badwolf",
      -- colorscheme = "everforest",
      -- colorscheme = "vim-colors-lucid",
      colorscheme = "space-vim-dark",
    },
  },
  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "so", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
}
