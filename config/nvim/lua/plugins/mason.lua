return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {}
      vim.cmd "MasonUpdate"
    end,
    cmd = "Mason",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      automatic_installation = true,
      handlers = {
        function(server_name)
          vim.lsp.enable(server_name)
        end,
      },
    },
    event = { "BufReadPost", "BufWritePost", "BufNewFile" }, -- LazyFile
    keys = {
      { "gD", vim.lsp.buf.declaration },
      { "gd", vim.lsp.buf.definition },
      { "gf", vim.lsp.buf.format },
      { "gi", vim.lsp.buf.implementation },
      { "gn", vim.lsp.buf.rename },
      { "gr", vim.lsp.buf.references },
      { "gt", vim.lsp.buf.type_definition },
      { "g[", vim.diagnostic.goto_prev },
      { "g]", vim.diagnostic.goto_next },
      { "ge", vim.diagnostic.open_float },
    },
  },
}
