-- I Don't even know
local opts = { noremap = true, silent = true }

-- Shorten Repeated Commands
local km = vim.api.nvim_set_keymap
local vo = vim.opt
local vc = vim.cmd

-- Line Number Options
vo.number = true
vo.relativenumber = true

-- Keep Selection After Indent
vc ":vnoremap < <gv"
vc ":vnoremap > >gv"

-- Remap space as leader key
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move text up and down
km("x", "J", ":move '>+1<CR>gv-gv", opts)
km("x", "K", ":move '<-2<CR>gv-gv", opts)
km("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
km("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
