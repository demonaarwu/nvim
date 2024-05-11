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
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    '0x00-ketsu/autosave.nvim',
    'windwp/nvim-autopairs',
    'terrortylor/nvim-comment',
    'NTBBloodbath/doom-one.nvim',
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    'xiyaowong/transparent.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/vim-vsnip',
    'maxmx03/solarized.nvim',
    'shaunsingh/nord.nvim',
}

require("lazy").setup(plugins_list)

require('autosave').setup()

require('nvim-autopairs').setup()

require('nvim_comment').setup()

require('lualine').setup {
	options = {
		theme="nord",
	}
}

vim.o.background = 'dark'
vim.cmd("colorscheme nord")
