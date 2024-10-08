-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Toggle Tree
-- keymap.set("n", "<C-n>", ":Neotree toggle<Return>", opts)
-- vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
---Select all
keymap.set("n", "<C-a>", "ggVG", opts)

---Go To Next Diagnostic
keymap.set("n", "<C-e>", function()
   vim.diagnostic.goto_next()
end, opts)

--Code Folding
keymap.set("n", "<leader>kl", "za", opts)

--Togle Terminal
keymap.set("n", "<A-h>", ":ToggleTerm<Return>", opts)
keymap.set("t", "<A-h>", "<C-\\><C-n>:ToggleTerm<Return>", opts)

--Normal Mode in Terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

keymap.set("n", ";", ":", opts)
