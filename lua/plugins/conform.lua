return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      rust = { "rustfmt", lsp_format = "fallback" },
      go = { "gofmt", "goimports", lsp_format = "fallback" },
    },
  },
}
