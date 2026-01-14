return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = lint.linters_by_ft or {}
    lint.linters_by_ft["markdown"] = { "markdownlint" }
    lint.linters_by_ft["go"] = { "golangcilint" }
    lint.linters_by_ft["yaml"] = { "yamllint" }
    lint.linters_by_ft["yaml.ansible"] = { "yamllint" }
    lint.linters_by_ft["yaml.github"] = { "actionlint" }

    -- Create autocommand which carries out the actual linting
    -- on the specified events.
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        if vim.bo.modifiable then
          lint.try_lint()
        end
      end,
    })
  end,
}
