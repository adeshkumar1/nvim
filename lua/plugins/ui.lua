return {
   {
      "folke/noice.nvim",
      opts = function(_, opts)
         table.insert(opts.routes, {
            filter = {
               event = "notify",
               find = "No information available",
            },
            opts = {
               skip = true,
            },
         })
         opts.presets.lsp_doc_border = true
      end,
   },
   {
      "rcarriga/nvim-notify",
      opts = {
         timeout = 2000,
      },
   },
   {
      "akinsho/bufferline.nvim",
      keys = {
         { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Tab" },
         { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous Tab" },
      },
      opts = {
         options = {
            show_buffer_close_icons = false,
            show_close_icon = false,
         },
      },
   },
   {
      "nvimdev/dashboard-nvim",
      event = "VimEnter",
      opts = function(_, opts)
         local logo = [[
 █████╗ ██████╗ ███████╗███████╗██╗  ██╗
██╔══██╗██╔══██╗██╔════╝██╔════╝██║  ██║
███████║██║  ██║█████╗  ███████╗███████║
██╔══██║██║  ██║██╔══╝  ╚════██║██╔══██║
██║  ██║██████╔╝███████╗███████║██║  ██║
╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝
      ]]
         logo = string.rep("\n", 8) .. logo .. "\n\n"
         opts.config.header = vim.split(logo, "\n")
      end,
   },
   {
      "echasnovski/mini.animate",
      recommended = true,
      event = "VeryLazy",
      version = "*",
      opts = function()
         -- don't use animate when scrolling with the mouse
         local mouse_scrolled = false
         for _, scroll in ipairs({ "Up", "Down" }) do
            local key = "<ScrollWheel" .. scroll .. ">"
            vim.keymap.set({ "", "i" }, key, function()
               mouse_scrolled = true
               return key
            end, { expr = true })
         end

         local animate = require("mini.animate")
         return {
            resize = {
               timing = animate.gen_timing.linear({ duration = 0, unit = "total" }),
            },
            scroll = {
               timing = animate.gen_timing.linear({ duration = 0, unit = "total" }),
               subscroll = animate.gen_subscroll.equal({
                  predicate = function(total_scroll)
                     if mouse_scrolled then
                        mouse_scrolled = false
                        return false
                     end
                     return total_scroll > 1
                  end,
               }),
            },
            cursor = {
               enable = false,
            },
            open = {
               enable = false,
            },
            close = {
               enable = false,
            },
         }
      end,
   },
}
