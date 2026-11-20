vim.pack.add { 'https://github.com/akinsho/bufferline.nvim' }

require('bufferline').setup {
  options = {
    show_buffer_close_icons = false,
    always_show_bufferline = false,
    offsets = {
      {
        filetype = 'neo-tree',
        separator = true,
      },
    },
    persist_buffer_sort = false,
  },
}

vim.keymap.set({ 'n', 'i' }, '<C-Tab>', '<Cmd>BufferLineCycleNext<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-S-Tab>', '<Cmd>BufferLineCyclePrev<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-S-L>', '<Cmd>BufferLineMoveNext<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-S-H>', '<Cmd>BufferLineMovePrev<CR>')

vim.keymap.set('n', 'Q', function()
  if #vim.fn.getbufinfo { buflisted = 1 } <= 1 then
    vim.cmd.enew()
    vim.bo.bufhidden = 'wipe'
  elseif vim.fn.buflisted(vim.fn.bufnr '#') then
    vim.cmd.buffer '#'
  else
    vim.cmd.bprevious()
  end
  vim.cmd.bdelete '#'
end)
