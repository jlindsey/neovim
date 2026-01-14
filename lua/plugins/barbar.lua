return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "lewis6991/gitsigns.nvim",
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    sidebar_filetypes = {
      ["neo-tree"] = { event = "BufWipeout" },
      toggleterm = true,
    },
  },
}
