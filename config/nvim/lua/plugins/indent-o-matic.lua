return {
  "Darazaki/indent-o-matic",
  config = function()
    require("indent-o-matic").detect()
    vim.g.editorconfig = false
  end,
  event = "InsertEnter",
}
