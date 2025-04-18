local ls = require("luasnip")

-- keybindings
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if ls.expand_or_jumpable() then
    return "<Cmd>lua require('luasnip').expand_or_jump()<CR>"
  else
    return "<Tab>"
  end
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    return "<Cmd>lua require('luasnip').jump(-1)<CR>"
  else
    return "<S-Tab>"
  end
end, { expr = true, silent = true })

-- load snippet
ls.add_snippets("cpp", require("snippets.cpp"))
