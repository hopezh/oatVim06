return {
    "hedyhli/outline.nvim",

    config = function()
        -- Example mapping to toggle outline
        -- stylua: ignore
        -- vim.keymap.set(
        --     "n",
        --     "<leader>qo",
        --     "<cmd>Outline<CR>",
        --     { desc = "Toggle Outline" }
        -- )

        -- stylua: ignore
        require("outline").setup({
            -- Your setup opts here (leave empty to use defaults)
            outline_window = {
                width = 33,
            },

            providers = {
                markdown = {
                    filetypes = {
                        "markdown",
                        "rmarkdown",
                        "quarto",
                    },
                },
            },

            symbol_folding = {
                autofold_depth = 100,
                markers = { '', '' },
            },

            outline_items = {
                show_symbol_details = false,
                show_symbol_lineno = true,            },
        })
    end,
}
