return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup {}
    require("mason-lspconfig").setup {
      automatic_installation = true,
      handlers = {
        function(server)
          require("lspconfig")[server].setup {}
        end,
      },
    }
  end,
  build = ":silent MasonUpdate",
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
}
