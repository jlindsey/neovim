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

vim.keymap.set("n", "<leader>wH", "<C-w><S-H>", { desc = "Move window left" })
vim.keymap.set("n", "<leader>wL", "<C-w><S-L>", { desc = "Move window right" })
vim.keymap.set("n", "<leader>wJ", "<C-w><S-J>", { desc = "Move window down" })
vim.keymap.set("n", "<leader>wK", "<C-w><S-K>", { desc = "Move window up" })

vim.keymap.set("n", "<leader>ws", "<C-w><C-s>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>wv", "<C-w><C-v>", { desc = "Split window vertically" })

-- Buffers
vim.keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>", { desc = "[N]ext buffer" })
vim.keymap.set("n", "<leader><Tab>", "<cmd>BufferNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader><S-Tab>", "<cmd>BufferPrevious<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>", { desc = "[P]revious buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>BufferDelete<CR>", { desc = "[D]elete current buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>BufferPick<CR>", { desc = "Pick buffer" })
