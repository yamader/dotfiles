-- auto mkdir
-- https://neovim.io/doc/user/editing.html#%2B%2Bp
vim.cmd [[
  " Auto-create parent directories (except for URIs "://").
  au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif
]]

-- only set wrap for specific filetypes
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.typ" },
  command = "setl wrap",
})
