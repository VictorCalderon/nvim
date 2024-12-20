local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "goimports", "gofmt" },
    javascript = { { "prettierd", "prettier" } },
    python = { "ruff", "isort" },
    rust = { "rustfmt", lsp_format = "fallback" },
    terraform = { "terraform_fmt" }
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
