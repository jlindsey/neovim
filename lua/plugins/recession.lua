return {
  "stevearc/resession.nvim",
  config = function()
    require("resession").setup({
      autosave = { enabled = true },
    })

    local resession = require("resession")
    vim.keymap.set("n", "<leader>Ss", resession.save, { desc = "[S]ession [S]ave" })
    vim.keymap.set("n", "<leader>Sl", resession.load, { desc = "[S]ession [L]oad" })
    vim.keymap.set("n", "<leader>Sd", resession.delete, { desc = "[S]ession [D]elete" })

    -- Automatic per-directory sessions
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        -- Only load the session if nvim was started with no args and without reading from stdin
        if vim.fn.argc(-1) == 0 and not vim.g.using_stdin then
          -- Save these to a different directory, so our manual sessions don't get polluted
          resession.load(vim.fn.getcwd(), { dir = "dirsession", silence_errors = true })
        end
      end,
      nested = true,
    })

    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = function()
        resession.save(vim.fn.getcwd(), { dir = "dirsession", notify = false })
      end,
    })

    vim.api.nvim_create_autocmd("StdinReadPre", {
      callback = function()
        vim.g.using_stdin = true
      end,
    })
  end,
}
