vim.pack.add { 'https://github.com/romus204/tree-sitter-manager.nvim' }

require('tree-sitter-manager').setup {
  auto_install = true,
  noauto_install = vim.g.tsignore,
}
