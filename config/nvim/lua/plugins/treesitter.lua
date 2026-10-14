return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "markdown_inline" },
      auto_install = true,
      highlight = {
        enable = true,
        -- large files: per-frame highlighting gets very slow (8.7MB json: 145ms/frame)
        disable = function(lang, buf)
          return vim.list_contains({ "gitcommit", "godot_resource", "perl", "ssh_config", "vimdoc" }, lang)
            or vim.fn.getfsize(vim.api.nvim_buf_get_name(buf)) > 1024 * 1024
        end,
      },
      incremental_selection = { enable = true },
    }

    vim.cmd "TSUpdate"
  end,
  event = { "BufReadPost", "BufWritePost", "BufNewFile" }, -- LazyFile
}
