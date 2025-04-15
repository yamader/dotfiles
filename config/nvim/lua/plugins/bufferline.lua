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
    { "<C-Tab>", ":BufferLineCycleNext\n" },
    { "<C-S-Tab>", ":BufferLineCyclePrev\n" },
    { "<C-S-l>", ":BufferLineMoveNext\n" },
    { "<C-S-h>", ":BufferLineMovePrev\n" },
  },
}
