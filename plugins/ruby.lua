local utils = require "astronvim.utils"

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "ruby")
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "solargraph") end,
  },
  -- {
  --   "jay-babu/mason-null-ls.nvim",
  --   opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "rubocop") end,
  -- },
  {
    "mfussenegger/nvim-dap",
    dependencies = { "suketa/nvim-dap-ruby", config = true },
  },
  {
    "tpope/vim-rails",
    event = "BufRead",
    -- config = function()
    --   -- Make Ruby instance variables and class variables highlight better
    --   -- https://github.com/tree-sitter/tree-sitter-ruby/issues/184
    --   vim.cmd "hi! link @label.ruby @property"
    --
    --   -- Better differentiate Ruby symbols from other syntax
    --   -- This also makes JS rest parameters and Ruby keyword arguments the same color
    --   vim.cmd "hi! link @symbol.ruby @parameter"
    --   -- Tpope's vim-rails sets the filetype of a lot of Rails yaml files to eruby.yaml,
    --   -- but treesitter highlights those horribly. Basically all white.
    --   -- Just revert it back to yaml...
    --   vim.api.nvim_create_autocmd("FileType", {
    --     callback = function()
    --       if vim.bo.filetype == "eruby.yaml" then vim.bo.filetype = "yaml" end
    --     end,
    --   })
    -- end,
  },
}
