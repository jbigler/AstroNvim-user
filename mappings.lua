-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- Use semicolon
    [";"] = { ":", desc = "Map semicolon to colon" },
    -- Page up and down go to center of screen
    ["<C-u>"] = { "<C-u>zz", desc = "Half page up" },
    ["<C-d>"] = { "<C-d>zz", desc = "Half page down" },
    ["n"] = { "nzzzv", desc = "Move to next search item" },
    ["N"] = { "Nzzzv", desc = "Move to previous search item" },
    ["C-f"] = { "C-fzz", desc = "Page down" },
    ["C-b"] = { "C-bzz", desc = "Page up" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>q"] = {
      function()
        for _, ui in pairs(vim.api.nvim_list_uis()) do
          if ui.chan and not ui.stdout_tty then
            vim.fn.chanclose(ui.chan)
          else
            vim.cmd "confirm q"
          end
        end
      end,
      desc = "Disconnect from Remote Neovim",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
