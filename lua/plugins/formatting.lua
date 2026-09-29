return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    -- Inside a Node project, only run prettier when the project installs it itself.
    -- Projects that format through ESLint (e.g. @antfu/eslint-config) would otherwise
    -- get prettier output that violates their stylistic rules.
    -- Outside any Node project (loose markdown/json files) Mason's prettier is still used.
    local prettier = opts.formatters and opts.formatters.prettier
    if prettier then
      local condition = prettier.condition
      prettier.condition = function(self, ctx)
        if condition and not condition(self, ctx) then
          return false
        end
        if not vim.fs.find("package.json", { path = ctx.dirname, upward = true })[1] then
          return true
        end
        return vim.fs.find("node_modules/.bin/prettier", { path = ctx.dirname, upward = true })[1] ~= nil
      end
    end
  end,
}
