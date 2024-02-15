return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = true,
    config = function()
        require("nvim-treesitter.configs").setup({
            textobjects = {
                select = {
                    enable = true,

                    -- Automatically jump forward to textobj, similar to targets.vim
                    lookahead = true,

                    keymaps = {
                        -- use these keymaps with vim motions in front,
                        -- such as "v" for select, "d" for delete, "c" for change, "y" for yank, "p" for paste, etc.

                        -- select outer/inner/left/right of assignment, i.e. the "=" sign
                        ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
                        ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
                        ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
                        ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

                        -- works for javascript/typescript files (custom capture I created in after/queries/ecma/textobjects.scm)
                        -- select outer/inner/left/right of object property
                        ["a:"] = { query = "@property.outer", desc = "Select outer part of an object property" },
                        ["i:"] = { query = "@property.inner", desc = "Select inner part of an object property" },
                        ["l:"] = { query = "@property.lhs", desc = "Select left part of an object property" },
                        ["r:"] = { query = "@property.rhs", desc = "Select right part of an object property" },

                        -- select outer/inner of a tparameter
                        ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
                        ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

                        -- select outer/inner conditional
                        ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
                        ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

                        -- select outer/inner of a loop
                        ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
                        ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

                        -- select outer/inner of a function call
                        ["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
                        ["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

                        -- select outer/inner of a method
                        ["am"] = {
                            query = "@function.outer",
                            desc = "Select outer part of a method/function definition",
                        },
                        ["im"] = {
                            query = "@function.inner",
                            desc = "Select inner part of a method/function definition",
                        },

                        -- select outer/inner of a class
                        ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
                        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
                    },
                },
            },
        })
    end,
}
