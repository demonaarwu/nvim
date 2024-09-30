-- aaw-edit.lua - configs for better edit

require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
	cpp = { "astyle" },
    },
})

require("autosave").setup({
    enable = true,
    events = { "InsertLeave", "TextChanged" },
    conditions = {
        exists = false,
    },
})

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require("nvim-autopairs").setup()

require("nvim_comment").setup()

require("nvim-ts-autotag").setup()

require("live-server").setup()

require('competitest').setup()

-- aaw-edit.lua ends here
