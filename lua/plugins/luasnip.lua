return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")

    -- Load snippets
    require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })

    -- Keymap
    vim.keymap.set({ "i", "s" }, "<Tab>", function()
      return ls.expand_or_jumpable() and "<cmd>lua require('luasnip').expand_or_jump()<CR>" or "<Tab>"
    end, { expr = true, silent = true })

    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
      return ls.jumpable(-1) and "<cmd>lua require('luasnip').jump(-1)<CR>" or "<S-Tab>"
    end, { expr = true, silent = true })
  end
}
