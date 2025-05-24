return {
    'stevearc/conform.nvim',
    config = function()
        require("conform").setup({
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                lua = { "stylua" },
                c = { "clang_format" },
                cpp = { "clang_format" },
                rust = { "rustfmt" },
            },
            formatters = {
                clang_format = {
                    prepend_args = { '--style=file', '--fallback-style==LLVM' }
                }
            }
        })
    end
}
