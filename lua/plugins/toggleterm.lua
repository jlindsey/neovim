return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "vertical",
    open_mapping = [[<c-\>]],
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.3
      end
    end,
  },
  init = function()
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "[T]erminal [T]oggle" })
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "[T]erminal [F]loat" })
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "[T]erminal [V]ertical" })
    vim.keymap.set("n", "<leader>tT", "<cmd>ToggleTerm direction=tab<cr>", { desc = "[T]erminal [T]ab" })
    vim.keymap.set("n", "<leader>ts", "<cmd>TermSelect<cr>", { desc = "[T]erminal [S]elect" })
  end,
}
