return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      background_colour = "#000000",
      level = vim.log.levels.WARN,
    }
    vim.notify = require "notify"

    vim.defer_fn(function()
      vim.notify.setup { level = vim.log.levels.INFO }
    end, 2000)
  end,
}
