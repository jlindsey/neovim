return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  keys = {
    { "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
  },
  opts = {
    sources = { "filesystem", "buffers", "document_symbols" },
    container = {
      width = "fit_content",
      max_width = 30,
    },
    filesystem = {
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}
