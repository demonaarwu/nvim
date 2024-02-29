-- aaw-plug.lua - install plugin

-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins list
local plugins_list = {
    'kepano/flexoki-neovim',
    'bluz71/nvim-linefly',
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    '0x00-ketsu/autosave.nvim',
    'windwp/nvim-autopairs',
     'neovim/nvim-lspconfig',
 'hrsh7th/cmp-nvim-lsp',
 'hrsh7th/cmp-cmdline',
 'hrsh7th/nvim-cmp',
'nvim-lsp-installer',
'terrortylor/nvim-comment',
-- 'folke/which-key.nvim',
}

require("lazy").setup(plugins_list)

require('autosave').setup {}

require('nvim-autopairs').setup {}

require('nvim_comment').setup()

-- require('which-key').setup()
