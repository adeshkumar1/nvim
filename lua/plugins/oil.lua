return {
   "stevearc/oil.nvim",
   opts = {},
   -- Optional dependencies
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
      require("oil").setup({
         default_file_explorer = true,
         skip_confirm_for_simple_edits = true,
         view_options = {
            show_hidden = true,
         },
         keymaps = {
            ["<C-h>"] = false,
         },
         -- vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>"),
         vim.keymap.set("n", "<C-n>", require("oil").toggle_float),
      })
   end,
}
