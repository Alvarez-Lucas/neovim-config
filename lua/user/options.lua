-- I Don't even know
local opts = { noremap = true, silent = true }

-- Vim Options
local options = {

	-- Line Number Options
	number = true,
	relativenumber = true,

	shiftwidth = 2,
	-- shiftwidth = 4
	tabstop = 2,

	scrolloff = 8,
	sidescrolloff = 8,
	expandtab = true,

	ignorecase = true,
	smartcase = true,

	-- mouse = "a",

	-- spell = true,
	-- spelllang = { 'en_us' },

	signcolumn = "yes",
	termguicolors = true,
}

-- Apply options
for option, value in pairs(options) do
	vim.opt[option] = value
end

-- Shorten Repeated Commands
local km = vim.api.nvim_set_keymap
local vc = vim.cmd

-- Theme
-- vim.g.tokyonight_style = "night"
-- vc "colorscheme dracula"
-- vc "colorscheme tokyonight"
-- vc("colorscheme doom-one")
--vc("colorscheme base16-monokai")
-- vc("colorscheme base16-gruvbox-dark-pale")
-- vc("colorscheme intellij")
-- vc("set background=light")
-- vc("set background=light")
-- vc("let g:lightline.colorscheme='intellij'")

-- vim.g.vscode_style = "dark"
-- vc("colorscheme vscode")

vc("colorscheme mariana")

-- vc("let ayucolor='dark'")
-- vc("colorscheme ayu")

-- Make Words include -
vc("set iskeyword+=-")

-- 80 Mark Color Column
vc("set colorcolumn=80")

-- Cursor line
vim.wo.cursorline = true
-- vim.optcursorline = "both"

-- Keep Selection After Indent
vc(":vnoremap < <gv")
vc(":vnoremap > >gv")

-- Remap Space As Leader Key
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Left Hand Explorer
-- km("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize With Arrows
km("n", "<C-Up>", ":resize -2<CR>", opts)
km("n", "<C-Down>", ":resize +2<CR>", opts)
km("n", "<C-Left>", ":vertical resize -2<CR>", opts)
km("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move Text Up And Down
km("x", "J", ":move '>+1<CR>gv-gv", opts)
km("x", "K", ":move '<-2<CR>gv-gv", opts)
km("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
km("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Keep Buffer After Paste
km("v", "p", '"_dP', opts)

-- Shorten Window Navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Nvim Tree
km("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- telescope
-- km("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
km("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
km("n", "<C-g>", "<cmd>Telescope live_grep<cr>", opts)
km("n", "<leader>b", "<cmd>Telescope git_branches<cr>", opts)
km("n", "<leader>r", "<cmd>Telescope lsp_references<cr>", opts)
km("n", "<leader>s", "<cmd>Telescope spell_suggest<cr>", opts)
km("n", "gs", "<cmd>DiffviewOpen<cr>", opts)
km("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)

-- git signs
km("n", "<leader>c", "<cmd>Gitsigns preview_hunk<cr>", opts)

-- save
km("n", "<C-s>", "<cmd>w!<cr>", opts)

-- vim wiki
km("n", "<leader>d", "<cmd>VimwikiToggleListItem<cr>", opts)

-- neogit
km("n", "<leader>g", "<cmd>Neogit<cr>", opts)
