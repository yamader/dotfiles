-- vimdocのtreesitterを無効化するため💩
vim.cmd [[
  au FileType * lua vim.treesitter.stop()
]]
