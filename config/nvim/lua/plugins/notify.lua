return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      background_colour = "#000000",
      level = vim.log.levels.WARN,
      top_down = false,
    }

    vim.notify = require "notify"
    print = function(...)
      vim.notify(table.concat(vim.tbl_map(tostring, { ... }), " "), "info", {
        title = "print",
      })
    end

    vim.defer_fn(function()
      vim.notify.setup { level = vim.log.levels.INFO }
    end, 2000)
  end,
}
