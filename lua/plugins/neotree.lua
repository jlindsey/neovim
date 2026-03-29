return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "\\", ":Neotree toggle reveal_force_cwd<CR>", desc = "NeoTree reveal", silent = true },
    { "-", ":Neotree position=current reveal_force_cwd<CR>", silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
      position = "left",
      width = 30,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = true,
        hide_gitignored = true,
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
    },
  },
}
