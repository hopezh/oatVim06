-- toggle dark/light theme -----------------------------------------------------
-- [thanks kkafar](https://github.com/folke/tokyonight.nvim/discussions/426#discussioncomment-7102103)

local function toggle_theme()
    if vim.opt.background:get() == "dark" then
        vim.opt.background = "light"
    -- vim.cmd("colorscheme tokyonight-day")
    else
        vim.opt.background = "dark"
        -- vim.cmd("colorscheme tokyonight-moon")
    end
end

-- stylua: ignore
vim.keymap.set(
    "n",
    "<leader>zt",
    toggle_theme,
    { desc = "Toggle dark/light theme" }
)

-- set cursorline as underline -------------------------------------------------
-- vim.api.nvim_set_hl(0, "CursorLine", { underline = true })

-- change bg color of cursolrline, cursorline number, & cursorcolumn -----------
-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "red" })
-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#292e42" }) -- tkyonight default
-- vim.api.nvim_set_hl(1, "CursorLineNr", { bg = "#272727" })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "red" })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#292e42" }) -- tkyonight default
-- vim.api.nvim_set_hl(2, "CursorLine", { bg = "#272727" })
-- vim.api.nvim_set_hl(3, "CursorColumn", { bg = "#252525" })

-- change the color of ColorColumn ---------------------------------------------
-- !!! must disable virt-column
vim.cmd("highlight ColorColumn ctermbg=0 guibg=#222222")
