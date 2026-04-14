return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  lazy = false,
  config = function()
    local langs = {
      "bash",
      "comment",
      "css",
      "diff",
      "dockerfile",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "html",
      "go",
      "javascript",
      "json",
      "lua",
      "make",
      "markdown",
      "nginx",
      "python",
      "rust",
      "xml",
      "yaml",
    }

    require("nvim-treesitter").setup()
    require("nvim-treesitter").install(langs)

    for _, lang in ipairs(langs) do
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { lang },
        callback = function()
          vim.treesitter.start()
          vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
          vim.wo[0][0].foldmethod = "expr"
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end
  end,
}
-- vim: ts=2 sts=2 sw=2 et
