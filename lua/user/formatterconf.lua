require('formatter').setup({
  filetype = {
     lua = {
      function()
        return {
          exe = "stylua",
          stdin = true,
        }
      end,
    },
  }
})

