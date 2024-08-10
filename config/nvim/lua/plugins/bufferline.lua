return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      show_buffer_close_icons = false,
      always_show_bufferline = false,
      offsets = {
        { filetype = "neo-tree" },
      },
    },
  },
  event = "BufAdd",
  keys = {
    { "<C-Tab>", "<Cmd>BufferLineCycleNext<CR>" },
    { "<C-S-Tab>", "<Cmd>BufferLineCyclePrev<CR>" },
    { "<C-S-l>", "<Cmd>BufferLineMoveNext<CR>" },
    { "<C-S-h>", "<Cmd>BufferLineMovePrev<CR>" },
  },
}
