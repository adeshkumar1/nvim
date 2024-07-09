return {
   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = function()
         require("catppuccin").setup({
            flavour = "latte",
            transparent_background = true,
         })
      end,
   },
}
