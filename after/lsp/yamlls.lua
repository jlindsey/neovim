---@type vim.lsp.Config
return {
  settings = {
    yaml = {
      validate = true,
      completion = true,
      schemaStore = { enable = true },
    },
  },
}
