return {
  'numToStr/Comment.nvim',
  lazy = false,
  config = function()
    require('Comment').setup({
      toggler = {
        line = '`',
        block = '~',
      },
      opleader = {
        line = '<Leader>`',
        block = '<Leader>~',
      },
      mappings = {
        basic = true,
        extra = false,
      },
    })
  end,
}
