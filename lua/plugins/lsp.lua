return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = { ensure_installed = { "clangd", "pyright", "rust_analyzer" } },
        dependencies = {
            { "neovim/nvim-lspconfig" }
        },
    },


    vim.diagnostic.config({
        virtual_text = {
            severity = vim.diagnostic.severity.ERROR,
            source = "if_many",
            spacing = 4,
            prefix = "●",
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
    })



}
