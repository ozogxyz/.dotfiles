local opt = vim.opt
local g = vim.g

-- opt.guicursor = "n-v-c-i:block-Cursor/lCursor-blinkon0"
opt.wildoptions = "fuzzy"
g.netrw_banner = 0
g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]]
g.have_nerd_font = false
opt.relativenumber = true
opt.mouse = "a"
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.inccommand = "split"
opt.cursorline = false
opt.scrolloff = 10
opt.hlsearch = true
