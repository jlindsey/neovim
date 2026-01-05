return {
  "marko-cerovac/material.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("material").setup({
      lualine_style = "stealth",

      contrast = {
        terminal = true,
        sidebars = true,
        floating_windows = true,
        lsp_virtual_text = true,
      },

      plugins = {
        "blink",
        "fidget",
        "dashboard",
        "gitsigns",
        "indent-blankline",
        "neo-tree",
        "nvim-web-devicons",
        "telescope",
        "which-key",
      },
    })

    vim.g.material_style = "oceanic"
    vim.cmd([[colorscheme material]])
  end,
}
