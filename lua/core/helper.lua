local icons = {
  Error = "",
  Warn  = "",
  Info  = "",
  Hint  = "󰠠",
}

for type, icon in pairs(icons) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {
    text = icon,
    texthl = hl,
    numhl = hl,
  })
end

vim.diagnostic.config({
  virtual_text = {
    format = function(diagnostic)
      local icon = icons[vim.diagnostic.severity[diagnostic.severity]] or ""
      return string.format("%s %s", icon, diagnostic.message)
    end,
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.cmd [[
  highlight DiagnosticVirtualTextError guifg=#f38ba8 gui=bold
  highlight DiagnosticVirtualTextWarn  guifg=#f9e2af gui=bold
  highlight DiagnosticVirtualTextInfo  guifg=#89b4fa gui=italic
  highlight DiagnosticVirtualTextHint  guifg=#94e2d5 gui=italic
]]
