return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VimEnter",

  --- @module 'bufferline'
  --- @type bufferline.Options
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      show_buffer_close_icons = false,
      show_close_icon = false,
      separator_style = "thin",
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
        {
          filetype = "toggleterm",
          text = "Terminal",
          text_align = "center",
          separator = true,
        },
      },
    },
  },
}
