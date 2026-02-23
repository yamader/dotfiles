-- system
vim.cmd "set gcr=" -- vim.opt.guicursor = nil
vim.cmd "set mouse=" -- vim.opt.mouse = nil
vim.opt.fileencodings = "ucs-bom,utf-8,euc-jp,sjis,latin1"
vim.opt.runtimepath:append "/usr/share/vim/vimfiles"

-- layout
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.number = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 16

-- edit
vim.opt.list = true
vim.opt.wrap = false
-- https://github.com/LazyVim/LazyVim/issues/80#issuecomment-1478662212
vim.api.nvim_create_autocmd("FileType", {
  command = "set fo-=cro",
})

-- indent
-- cf. https://vim-jp.org/vim-users-jp/2010/04/06/Hack-137.html
vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
-- wtf
vim.api.nvim_create_autocmd("FileType", {
  command = "set si inde=",
})

-- fold
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "indent" -- "expr"
vim.opt.foldlevelstart = 99
