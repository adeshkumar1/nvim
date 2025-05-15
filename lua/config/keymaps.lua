-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
-- vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
-- vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
-- vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

---Select all
keymap.set("n", "<C-a>", "ggVG", opts)

---Go To Next Diagnostic
keymap.set("n", "<C-e>", function()
  vim.diagnostic.goto_next()
end, opts)

--Code Folding
keymap.set("n", "<leader>kl", "za", opts)

--Toggle Terminal
keymap.set("n", "<A-h>", ":ToggleTerm<Return>", opts)
keymap.set("t", "<A-h>", "<C-\\><C-n>:ToggleTerm<Return>", opts)

--Normal Mode in Terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

keymap.set("n", "<leader>fs", ":FzfLua live_grep <Return>", opts)
