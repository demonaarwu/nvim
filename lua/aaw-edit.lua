-- aaw-edit.lua - configs for better edit

require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 1000,
        lsp_format = "fallback",
    },
})

require("autosave").setup({
    enable = true,
    events = { "InsertLeave", "TextChanged" },
    conditions = {
        exists = false,
    },
})

require("nvim-autopairs").setup()

require("nvim_comment").setup()

require("nvim-ts-autotag").setup()

-- aaw-edit.lua ends here
