-- OPTIONS --

-- Regular vim themes are the best
vim.cmd.colorscheme('lunaperche')
vim.cmd.hi('Normal guibg=NONE ctermbg=NONE')

--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Tab settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Use number of spaces to inset a <Tab>
vim.opt.expandtab = true

-- Disable swap
vim.opt.swapfile = false

-- Wildmenu for horizontal completion in commands
vim.opt.wildmode = "full"
vim.opt.wildmenu = true
vim.opt.wildoptions = "fuzzy,tagfile"

-- Cursor styling
--vim.opt.guicursor = "n-v-c-i:block-Cursor/lCursor,i-ci-ve:blinkwait200-blinkoff400-blinkon250-Cursor/lCursor"
vim.opt.guicursor = ""

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect,preview'

---- MAPPINGS ----------------------------------------------------------------------
--vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Netrw 
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.Rex)

-- PLUGINS----------------------------------------------------------------------
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { 'neovim/nvim-lspconfig' },
  { 'github/copilot.vim' },
  {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.5",
      dependencies = { "nvim-lua/plenary.nvim" },
      init = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
         vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
         vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
         vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      end,
   },
})

-- LSP Configurations
require'lspconfig'.pyright.setup{}
require'lspconfig'.ocamllsp.setup{}
require'lspconfig'.gopls.setup{}
