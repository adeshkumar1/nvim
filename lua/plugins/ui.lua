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
      timeout = 10000,
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab> ", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Tab" },
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
}
