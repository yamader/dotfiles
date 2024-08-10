local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  spec = "plugins",
  performance = {
    rtp = {
      reset = false,
      disabled_plugins = { "netrwPlugin", "tohtml", "tutor" },
    },
  },
}

-- auto update
-- https://github.com/folke/lazy.nvim/issues/702#issuecomment-1903484213
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("lazyvim_autoupdate", { clear = true }),
  callback = function()
    if require("lazy.status").has_updates then
      require("lazy").update { show = false }
    end
  end,
})
