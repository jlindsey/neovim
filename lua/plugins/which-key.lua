return {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
    delay = 0,
    icons = {
      mappings = true,
      keys = {},
    },
    spec = {
      { "<leader>b", group = "[B]uffers" },
      { "<leader>p", group = "[P]rojects" },
      { "<leader>s", group = "[S]earch" },
      { "<leader>S", group = "[S]ession" },
      { "<leader>t", group = "[T]erminal" },
      { "<leader>w", group = "[W]indows" },
    },
  },
}
