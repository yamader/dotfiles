vim.g.mapleader = ";"

vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")
vim.keymap.set("i", "<C-c>", "<C-[>")
vim.keymap.set("n", "<C-c><C-c>", "<Cmd>noh<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<Space>", ":")
vim.keymap.set("n", "Q", "<Cmd>bp|sp|bn|bd<CR>")

vim.keymap.set("n", "q", "")
vim.keymap.set("n", "q:", "")
vim.keymap.set({ "n", "i" }, "<F1>", "")
