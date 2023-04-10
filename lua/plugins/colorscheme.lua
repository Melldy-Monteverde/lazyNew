return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "folke/tokyonight.nvim" },
  { "ayu-theme/ayu-vim" },
  { "catppuccin/nvim" },
  { "rebelot/kanagawa.nvim" },
  { "AlexvZyl/nordic.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
