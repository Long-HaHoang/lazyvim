local ts_servers = { vtsls = true, ts_ls = true, tsserver = true }

return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    -- When ESLint is attached it is the source of truth for formatting (like VS Code's
    -- "editor.defaultFormatter": "dbaeumer.vscode-eslint"). Keep LazyVim's generic LSP
    -- formatter from running the TypeScript server afterwards and undoing ESLint's result.
    format = {
      filter = function(client)
        return not ts_servers[client.name] or #vim.lsp.get_clients({ bufnr = 0, name = "eslint" }) == 0
      end,
    },
    servers = {
      -- only start in projects with an angular.json / nx.json instead of attaching to every TS file
      angularls = { workspace_required = true },
    },
  },
}
