return {
    -- need nvim >= 0.10 to support inlay_hints
    -- video ref: https://www.youtube.com/watch?v=DYaTzkw3zqQ
    -- code ref: https://gist.github.com/elijahmanor/8a51534e108c96db740a2e93f9310cce/revisions
    {
        "neovim/nvim-lspconfig",

        --@class PluginLspOpts
        opts = {
            -- inlay_hints = { enabled = true },
            inlay_hints = { enabled = false },

            ---@type lspconfig.options
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            workspace = { checkThirdparty = false },
                            telemetry = { enable = false },
                            hint = {
                                enable = true,
                                arrayIndex = "Enable",
                                setType = true,
                            },
                        },
                    },
                },
                tsserver = {
                    settings = {
                        typescript = {
                            inlayHints = {
                                -- taken from https://github.com/typescript-language-server/typescript-language-server#workspacedidchangeconfiguration
                                includeInlayEnumMemberValueHints = true,
                                includeInlayFunctionLikeReturnTypeHints = true,
                                includeInlayFunctionParameterTypeHints = true,
                                includeInlayParameterNameHints = "all",
                                includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
                                includeInlayPropertyDeclarationTypeHints = true,
                                includeInlayVariableTypeHints = true,
                                includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
                            },
                        },
                        javascript = {
                            inlayHints = {
                                includeInlayEnumMemberValueHints = true,
                                includeInlayFunctionLikeReturnTypeHints = true,
                                includeInlayFunctionParameterTypeHints = true,
                                includeInlayParameterNameHints = "all",
                                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                                includeInlayPropertyDeclarationTypeHints = true,
                                includeInlayVariableTypeHints = true,
                                includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                            },
                        },
                    },
                },
            },
        },
    },
}
