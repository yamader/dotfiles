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
          "perl",
          "ssh_config",
          "vimdoc",
        },
      },
      incremental_selection = { enable = true },
      indent = { enable = true },
    }

    vim.cmd "TSUpdate"
  end,
  event = { "BufReadPost", "BufWritePost", "BufNewFile" }, -- LazyFile
}
