return {
  "coffebar/neovim-project",
  lazy = false,
  priority = 100,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "Shatur/neovim-session-manager",
  },
  opts = {
    dashboard_mode = true,
    projects = {
      "~/projects/*",
      "~/.config/nvim",
    },
    picker = { type = "telescope" },
  },
  init = function()
    vim.opt.sessionoptions:append("globals")

    vim.keymap.set("n", "<leader>pp", "<cmd>NeovimProjectDiscover<cr>", { desc = "[P]roject [P]icker" })
  end,
}
