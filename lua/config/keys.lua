-- General
vim.keymap.set({ "n", "i", "v" }, "<D-s>", "<cmd>w<CR>")
vim.keymap.set({ "n", "i", "v", "c", "t" }, "<C-g>", "<ESC>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Windowing
vim.keymap.set("n", "<leader>wh", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>wl", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader>wj", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader>wk", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>wH", "<C-w><C-H>", { desc = "Move window left" })
vim.keymap.set("n", "<leader>wL", "<C-w><C-L>", { desc = "Move window right" })
vim.keymap.set("n", "<leader>wJ", "<C-w><C-J>", { desc = "Move window down" })
vim.keymap.set("n", "<leader>wK", "<C-w><C-K>", { desc = "Move window up" })

vim.keymap.set("n", "<leader>ws", "<C-w><C-s>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>wv", "<C-w><C-v>", { desc = "Split window vertically" })

-- Buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "[N]ext buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "[P]revious buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "[D]elete current buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>buffers<CR>", { desc = "[L]ist buffers" })
