-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Better line start/end
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- Better escape
keymap("i", "jk", "<ESC>", opts)
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal insert mode with double Esc" })

-- Tab switch buffer
-- keymap("n", "<Tab>", ":bnext<CR>", opts)
-- keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Resize window using <leader>w + home row keys
keymap("n", "<leader>wk", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap("n", "<leader>wj", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap("n", "<leader>wh", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap("n", "<leader>wl", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Resize window using <leader>w + arrow keys
keymap("n", "<leader>w<Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap("n", "<leader>w<Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap("n", "<leader>w<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap("n", "<leader>w<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
