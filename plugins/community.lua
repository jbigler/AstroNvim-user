return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.utility.neodim" },
  { import = "astrocommunity.motion.nvim-surround"},
  { import = "astrocommunity.pack.ruby"},
  { import = "astrocommunity.pack.typescript"},
  { import = "astrocommunity.pack.clojure"},
  { import = "astrocommunity.pack.tailwindcss"},
  { import = "astrocommunity.completion.codeium-vim"},
}
