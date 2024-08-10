return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup {
      auto_install = true,
      highlight = {
        enable = true,
        disable = {
          "gitcommit",
          "godot_resource",
          "ssh_config",
          "vimdoc",
        },
      },
      -- indent = { enable = true },
    }
  end,
  build = ":silent TSUpdate",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" }, -- LazyFile
}
