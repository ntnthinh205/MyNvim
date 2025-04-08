return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
require("bufferline").setup {
  highlights = {
    fill = {
      bg = "none",
    },
    background = {
      bg = "none",
    },
    buffer_selected = {
      bg = "none",
      bold = true,
    },
    buffer_visible = {
      bg = "none",
    },
    separator = {
      bg = "none",
      fg = "#3b4261", -- tuỳ chọn
    },
    separator_selected = {
      bg = "none",
      fg = "#61afef",
    },
    separator_visible = {
      bg = "none",
    },
    close_button = {
      bg = "none",
    },
    close_button_selected = {
      bg = "none",
    },
    tab_selected = {
      bg = "none",
    },
    tab = {
      bg = "none",
    },
    tab_close = {
      bg = "none",
    },
  },
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = "thin", -- hoặc "slant", "padded_slant"
  },
}
  end,
}
