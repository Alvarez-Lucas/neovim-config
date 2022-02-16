local doomone =  require('doom-one')
-- Works
doomone.setup({
  cursor_coloring = true,
  terminal_colors = true,
  italic_comments = false,
  enable_treesitter = true,
  transparent_background = true,
  pumblend = {
      enable = true,
      transparency_amount = 20,
  },
  plugins_integrations = {
      neorg = false,
      barbar = false,
      bufferline = false,
      gitgutter = false,
      gitsigns = true,
      telescope = true,
      neogit = true,
      nvim_tree = true,
      dashboard = false,
      startify = false,
      whichkey = false,
      indent_blankline = false,
      vim_illuminate = true,
      lspsaga = false,
  },
})
