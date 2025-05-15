-- auto mkdir
-- https://neovim.io/doc/user/editing.html#%2B%2Bp
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  pattern = "*",
  command = "if @% !~# '\\(://\\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif",
})

-- disable builtin treeshitter 💩
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "*",
  callback = function()
    vim.treesitter.stop()
  end,
})

-- only set wrap for specific filetypes
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown", "tex", "typst" },
  command = "setl wrap",
})

-- buffer next or prev
vim.api.nvim_create_user_command("Bnp", function()
  local bufnr = vim.api.nvim_get_current_buf()
  local bufs = vim.tbl_filter(function(buf)
    return vim.bo[buf].buflisted
  end, vim.api.nvim_list_bufs())
  vim.cmd(bufnr ~= bufs[#bufs] and "bn" or "bp")
end, {})
