return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  --- @module 'ibl'
  --- @type ibl.config
  opts = {
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
