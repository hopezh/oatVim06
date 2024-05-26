-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- display ---------------------------------------------------------------------
opt.background = "dark"
opt.colorcolumn = "80" -- highlight the 80th column, nil when virt-column.nvim is used
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes:3" -- always show signcolumn, max width=3

-- tabs & indentation ----------------------------------------------------------
opt.autoindent = true
opt.shiftwidth = 4
opt.showtabline = 2 -- always show tab header
opt.smarttab = true
opt.softtabstop = 4
opt.tabstop = 4
opt.list = false

-- blinking cursor -------------------------------------------------------------
opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- stop undo file --------------------------------------------------------------
opt.undofile = false -- stop unlimited undo to even changes made in previous session

-- no swap file ----------------------------------------------------------------
vim.cmd("set noswapfile")

-- specify file format ---------------------------------------------------------
-- to remove the ^M character at the end of each line
opt.fileformat = "unix"

-- stop auto format on save ----------------------------------------------------
-- vim.g.autoformat = false -- globally
-- vim.b.autoformat = false -- buffer-local

-- LazyVim automatically configures lazygit: -----------------------------------
--  * theme, based on the active colorscheme.
--  * editorPreset to nvim-remote
--  * enables nerd font icons
-- Set to false to disable.
vim.g.lazygit_config = false
