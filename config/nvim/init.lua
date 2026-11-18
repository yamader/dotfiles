-- import vim
vim.cmd.source '~/.vimrc'
vim.opt.runtimepath:append '/usr/share/vim/vimfiles'

-- ui options
vim.opt.cmdheight = 0
require('vim._core.ui2').enable { enable = true }

-- set wrap
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = { 'markdown', 'tex', 'typst' },
  command = 'setl wrap',
})

-- disable treeshitter
vim.g.tsignore = {
  'bash',
  'dockerfile',
  'git_rebase',
  'gitcommit',
  'gitignore',
  'ssh_config',
  'vim',
  'vimdoc',
}
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = vim.g.tsignore,
  callback = function()
    vim.treesitter.stop()
  end,
})

-- delete trailing whitespaces
vim.api.nvim_create_user_command('Dws', 'keepp %s/\\s\\+$', {})
