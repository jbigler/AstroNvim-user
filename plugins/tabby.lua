return {
  "TabbyML/vim-tabby",
  -- event = "BufRead",
  lazy = false,
  init = function()
    vim.g.tabby_keybinding_accept = "<C-y>"
    vim.g.tabby_trigger_mode = "manual"
  end,
}
