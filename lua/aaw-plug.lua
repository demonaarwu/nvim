-- aaw-plug.lua - install plugins

function install_lazy()
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
end

install_lazy()

-- plugins list
local plugins_list = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "0x00-ketsu/autosave.nvim",
    "windwp/nvim-autopairs",
    "terrortylor/nvim-comment",
    "nvim-lualine/lualine.nvim",
    "miikanissi/modus-themes.nvim",
    "nvim-tree/nvim-web-devicons",
    "xiyaowong/transparent.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/vim-vsnip",
    "windwp/nvim-ts-autotag",
    "nvim-treesitter/nvim-treesitter",
    "stevearc/conform.nvim",
    "barrett-ruth/live-server.nvim",
    'MunifTanjim/nui.nvim',
    'xeluxee/competitest.nvim',
}

require("lazy").setup(plugins_list)

require("lualine").setup()
vim.o.background = "light"
vim.cmd("colorscheme modus_operandi")
