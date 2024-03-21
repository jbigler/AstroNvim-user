return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize the options set by the community
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<M-g>",
          accept_word = false,
          accept_line = false,
          next = "<M-f>",
          prev = "<M-d>",
          dismiss = "<M-a>",
        },
      },
    },
  },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.nvim-spider" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.clojure" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.utility.noice-nvim" },
}
