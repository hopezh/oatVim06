return {
    "williamboman/mason.nvim",

    opts = {
        ensure_installed = {
            "black",
            "css-lsp",
            "eslint-lsp",
            "html-lsp",
            "json-lsp",
            "lua-language-server",
            "markdownlint",
            "marksman",
            "mypy",
            "pyright",
            "shfmt",
            "stylua",
            "shellcheck",
            "typescript-language-server",
            "vim-language-server",
            "yaml-language-server",
        },
        ui = {
            icons = {
                -- package_installed = "✓",
                -- package_pending = "➜",
                package_installed = "",
                package_pending = "➜",
                package_uninstalled = "",
            },
        },
    },
}
