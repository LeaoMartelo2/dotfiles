local options = {
    formatters_by_ft = {
        lua = { "stylua" },
         c = { "clang-format" },
         cpp = { "clang-format" },
         go = { "gofumpt", "goimports-reviser", "golines" },
         python = { "isort", "black" },
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                IndentWidth: 4, \
                TabWidth: 4, \
                UseTab: Never, \
                AccessModifierOffset: 0, \
                IndentAccessModifiers: true, \
                PackConstructorInitializers: Never, \
                ColumnLimit: 0}",
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)
