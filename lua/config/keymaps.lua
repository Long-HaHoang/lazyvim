-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- config/options.loa
local opt = vim.opt

opt.backup = false

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Better escape
keymap("i", "jk", "<ESC>", opts)
keymap("n", "<ESC>", "<ESC>:noh<CR>", opts)

-- Tab switch buffer
keymap("n", "<Tab>", ":bnext<CR>", opts)
