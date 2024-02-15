-- This is a config that can be merged with your
-- existing LazyVim config.
--
-- It configures all plugins necessary for quarto-nvim,
-- such as adding its code completion source to the
-- completion engine nvim-cmp.
-- Thus, instead of having to change your configuration entirely,
-- this takes your existings config and adds on top where necessary.

return {

    -- this taps into vim.ui.select and vim.ui.input
    -- and in doing so currently breaks renaming in otter.nvim
    { "stevearc/dressing.nvim", enabled = false },

    {
        "quarto-dev/quarto-nvim",

        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
            "nvim-treesitter/nvim-treesitter",
            "jmbuhr/otter.nvim",
        },

        opts = {
            lspFeatures = {
                languages = { "r", "python", "julia", "bash", "html", "lua" },
            },
            keymap = {
                hover = "K", -- default
                definition = "gd", -- default
                type_definition = "gD", -- default
                -- rename = "<leader>lR", -- default
                rename = "<leader>cr",
                -- format = "<leader>lf", -- default
                references = "gr", -- default
                document_symbols = "gS", -- default
            },
        },

        ft = "quarto",

        keys = {
            { "<leader>qa", ":QuartoActivate<cr>", desc = "quarto activate" },
            { "<leader>qp", ":lua require'quarto'.quartoPreview()<cr>", desc = "quarto preview" },
            { "<leader>qq", ":lua require'quarto'.quartoClosePreview()<cr>", desc = "quarto close" },
            { "<leader>qh", ":QuartoHelp ", desc = "quarto help" },
            { "<leader>qe", ":lua require'otter'.export()<cr>", desc = "quarto export" },
            { "<leader>qE", ":lua require'otter'.export(true)<cr>", desc = "quarto export overwrite" },
            { "<leader>qrr", ":QuartoSendAbove<cr>", desc = "quarto run to cursor" },
            { "<leader>qra", ":QuartoSendAll<cr>", desc = "quarto run all" },
            { "<leader><cr>", ":SlimeSend<cr>", desc = "send code chunk" },
            { "<c-cr>", ":SlimeSend<cr>", desc = "send code chunk" },
            { "<c-cr>", "<esc>:SlimeSend<cr>i", mode = "i", desc = "send code chunk" },
            { "<c-cr>", "<Plug>SlimeRegionSend<cr>", mode = "v", desc = "send code chunk" },
            { "<cr>", "<Plug>SlimeRegionSend<cr>", mode = "v", desc = "send code chunk" },
            { "<leader>ctr", ":split term://R<cr>", desc = "terminal: R" },
            { "<leader>cti", ":split term://ipython<cr>", desc = "terminal: ipython" },
            { "<leader>ctp", ":split term://python<cr>", desc = "terminal: python" },
            { "<leader>ctj", ":split term://julia<cr>", desc = "terminal: julia" },
        },
    },

    {
        "jmbuhr/otter.nvim",
        opts = {
            buffers = {
                set_filetype = true,
            },
        },
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "jmbuhr/otter.nvim" },
        opts = function(_, opts)
            ---@param opts cmp.ConfigSchema
            local cmp = require("cmp")
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "otter" } }))
        end,
    },

    -- send code from python/r/qmd documets to a terminal or REPL
    -- like ipython, R, bash
    {
        "jpalardy/vim-slime",
        init = function()
            vim.b["quarto_is_" .. "python" .. "_chunk"] = false
            Quarto_is_in_python_chunk = function()
                require("otter.tools.functions").is_otter_language_context("python")
            end

            vim.cmd([[
      let g:slime_dispatch_ipython_pause = 100
      function SlimeOverride_EscapeText_quarto(text)
      call v:lua.Quarto_is_in_python_chunk()
      if exists('g:slime_python_ipython') && len(split(a:text,"\n")) > 1 && b:quarto_is_python_chunk
      return ["%cpaste -q\n", g:slime_dispatch_ipython_pause, a:text, "--", "\n"]
      else
      return a:text
      end
      endfunction
      ]])

            local function mark_terminal()
                vim.g.slime_last_channel = vim.b.terminal_job_id
                vim.print(vim.g.slime_last_channel)
            end

            local function set_terminal()
                vim.b.slime_config = { jobid = vim.g.slime_last_channel }
            end

            -- slime, neovvim terminal
            vim.g.slime_target = "neovim"
            vim.g.slime_python_ipython = 1

            require("which-key").register({
                ["<leader>cm"] = { mark_terminal, "mark terminal" },
                ["<leader>cs"] = { set_terminal, "set terminal" },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                pyright = {},
                -- r_language_server = {},
                -- julials = {},
                marksman = {
                    -- also needs:
                    -- $home/.config/marksman/config.toml :
                    -- [core]
                    -- markdown.file_extensions = ["md", "markdown", "qmd"]
                    filetypes = { "markdown", "quarto" },
                    root_dir = require("lspconfig.util").root_pattern(".git", ".marksman.toml", "_quarto.yml"),
                },
            },
        },
    },

    -- {
    --     "nvim-treesitter/nvim-treesitter",
    --     opts = {
    --         ensure_installed = {
    --             "bash",
    --             "c",
    --             "cpp",
    --             "css",
    --             "git_config",
    --             "gitcommit",
    --             "gitignore",
    --             "glsl",
    --             "html",
    --             "kdl",
    --             "json",
    --             "java",
    --             "javascript",
    --             "julia",
    --             "latex",
    --             "lua",
    --             "luadoc",
    --             "luap",
    --             "markdown",
    --             "markdown_inline",
    --             "norg",
    --             "org",
    --             "python",
    --             "query",
    --             "r",
    --             "regex",
    --             "tsx",
    --             "typescript",
    --             "vim",
    --             "vimdoc",
    --             "yaml",
    --         },
    --     },
    -- },
}
