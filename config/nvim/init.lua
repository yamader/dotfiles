-- import vim
vim.cmd.source '~/.vimrc'
vim.opt.runtimepath:append '/usr/share/vim/vimfiles'

-- ui options
vim.opt.cmdheight = 0
require('vim._core.ui2').enable { enable = true }

-- delete trailing whitespaces
vim.api.nvim_create_user_command('Dws', 'keepp %s/\\s\\+$', {})

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

-- disable editorconfig tabstop
local ec = require('editorconfig')
local orig_indent_size = ec.properties.indent_size
ec.properties.tab_width = function() end
ec.properties.indent_size = function(buf, val, opts)
  local x = vim.bo[buf].tabstop
  orig_indent_size(buf, val, opts)
  vim.bo[buf].tabstop = x
end
