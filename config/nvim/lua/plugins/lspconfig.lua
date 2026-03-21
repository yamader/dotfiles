return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig" },
    opts = {},
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
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {}
      vim.cmd "MasonUpdate"
    end,
    cmd = "Mason",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("serve_d", {
        settings = {
          overrideDfmtEditorconfig = false, -- wtf
          dfmt = {
            -- https://github.com/Pure-D/serve-d/issues/213
            braceStyle = "otbs",
          },
        },
      })
    end,
  },
}
