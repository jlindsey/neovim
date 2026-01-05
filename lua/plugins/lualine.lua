return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "material",
      disabled_filetypes = {
        statusline = {
          "neo-tree",
          "toggleterm",
        },
      },
    },

    sections = {
      lualine_y = {
        {
          "lsp_status",
          symbols = { separator = " | " },
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
