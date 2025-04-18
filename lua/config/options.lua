-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set multiple options at once
vim.opt = {
  conceallevel = 0, -- Disable hiding of markup
  wrap = true, -- Break lines at word boundaries
  linebreak = true, -- Break lines at word boundaries (better wrapping)
  autoindent = true, -- Copy indent of current line when inserting new line
}

-- Disable the inlay hints (additional information about types and parameter names) because it clutters my view
vim.g.lazyvim_no_inlay_hints = false
