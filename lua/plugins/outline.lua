return {
    "hedyhli/outline.nvim",

    config = function()
        -- Example mapping to toggle outline
        vim.keymap.set("n", "<leader>qo", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

        require("outline").setup({
            -- Your setup opts here (leave empty to use defaults)
            providers = {
                markdown = {
                    filetypes = { "markdown", "rmarkdown", "quarto" },
                },
            },
        })
    end,
}
