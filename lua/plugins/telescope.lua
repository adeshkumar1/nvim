return {
   "nvim-telescope/telescope.nvim",
   keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>ff",
        function() require("telescope.builtin").find_files({ cwd = vim.fn.getcwd()}) end,
        desc = "Find File",
      },
      {
         "<leader>fs",
         function()
            require("telescope.builtin").live_grep({ cwd = vim.fn.getcwd() })
         end,
         desc = "Find In File",
      },
   },
   -- change some options
   opts = {
      defaults = {
         layout_strategy = "horizontal",
         layout_config = { prompt_position = "top" },
         sorting_strategy = "ascending",
         winblend = 0,
      },
   },
}
