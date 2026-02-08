return {
  "zbirenbaum/copilot.lua",
  dependencies = {
    "copilotlsp-nvim/copilot-lsp",
  },
  opts = {
    -- Using blink.cmp for completion, so disable
    -- the built-in methods
    suggestion = { enabled = false },
    panel = { enabled = false },
  },
}
