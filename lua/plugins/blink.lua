return {
  "saghen/blink.cmp",
  event = "VimEnter",
  version = "1.*",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      version = "2.*",
      build = "make install_jsregexp",
      dependencies = {
        {
          "rafamadriz/friendly-snippets",
          config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
          end,
        },
      },
      opts = {},
    },
    "folke/lazydev.nvim",
  },

  --- @module 'blink.cmp'
  --- @type blink.cmp.Config
  opts = {
    keymap = {
      preset = "enter",

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },

    appearance = { nerd_font_variant = "mono" },

    completion = {
      keyword = { range = "full" },
      list = { selection = { preselect = true, auto_insert = true } },
      documentation = { auto_show = true, auto_show_delay_ms = 100 },
      ghost_text = { enabled = true },
    },

    sources = {
      default = { "lsp", "path", "snippets", "lazydev" },
      providers = {
        lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
      },
    },

    snippets = { preset = "luasnip" },

    fuzzy = { implementation = "lua" },

    signature = { enabled = true },
  },
}
-- vim: ts=2 sts=2 sw=2 et
