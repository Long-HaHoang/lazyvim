require("lspconfig").cssls.setup({
  settings = {
    css = {
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
})
