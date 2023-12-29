return {
  "TabbyML/vim-tabby",
  event = "BufRead *.rb",
  init = function()
    vim.g.tabby_keybinding_accept = '<C-CR>'
  end
}
