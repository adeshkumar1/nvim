return {
  {
    name = "amazonq",
    url = "ssh://git.amazon.com/pkg/AmazonQNVim",
    opts = {
      ssoStartUrl = "https://amzn.awsapps.com/start",
      inline_suggest = true,
      filetypes = {
        "amazonq",
        "bash",
        "java",
        "python",
        "typescript",
        "javascript",
        "csharp",
        "ruby",
        "kotlin",
        "sh",
        "sql",
        "c",
        "cpp",
        "go",
        "rust",
        "lua",
      },
      on_chat_open = function()
        vim.cmd([[
        vertical botright split
        vertical resize 80
        " Window options:
        set wrap breakindent nonumber norelativenumber nolist
      ]])
      end,
      -- Note: It's normally not necessary to change default `lsp_server_cmd`.
      -- lsp_server_cmd = {
      --   'node',
      --   vim.fn.stdpath('data') .. '/lazy/AmazonQNVim/language-server/build/aws-lsp-codewhisperer-token-binary.js',
      --   '--stdio',
      -- },
    },
  },
}
