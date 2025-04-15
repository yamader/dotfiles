vim.g.mapleader = ";"

vim.cmd.cabbrev("h", "tab h")

vim.keymap.set("i", "<C-a>", "<C-o><S-i>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-b>", "<Left>")
vim.keymap.set("i", "<C-f>", "<Right>")
vim.keymap.set("i", "<C-d>", "<Del>")
vim.keymap.set("n", "<C-b>", "<Left>")
vim.keymap.set("n", "<C-f>", "<Right>")

vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")
vim.keymap.set("i", "<C-c>", "<C-[>")
vim.keymap.set("n", "<C-c><C-c>", ":noh\n")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<Space>", ":")
vim.keymap.set("n", "Q", ":bp|sp|bn|bd\n")

vim.keymap.set("n", "q", "")
vim.keymap.set("n", "q:", "")
vim.keymap.set({ "n", "i" }, "<F1>", "")
