return {
    "folke/noice.nvim",

    opts = {
        presets = {
            lsp_doc_border = true, -- add border to hover docs & signature help
        },
        lsp = {
            signature = {
                opts = {
                    size = {
                        -- height = 10,
                        -- width = 100,
                    },
                },
            },
        },
    },
}
