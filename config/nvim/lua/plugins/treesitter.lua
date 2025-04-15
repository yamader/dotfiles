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
      indent = { enable = true },
    }

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
    }

    vim.cmd "TSUpdate"
  end,
  event = { "BufReadPost", "BufWritePost", "BufNewFile" }, -- LazyFile
}
