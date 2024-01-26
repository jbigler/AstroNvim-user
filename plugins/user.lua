return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  -- {
  --   "m-demare/hlargs.nvim",
  --   cond = not (vim.g.vscode or vim.g.neovide),
  --   event = "User AstroFile",
  --   opts = {
  --     color = "#FF7A00", --"#ef9062",
  --     paint_arg_usages = true,
  --   },
  -- },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },
}
