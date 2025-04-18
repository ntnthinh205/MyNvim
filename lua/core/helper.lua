local icons = {
    Error = "",
    Warn  = "",
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
            local severity_map = {
                [vim.diagnostic.severity.ERROR] = "Error",
                [vim.diagnostic.severity.WARN]  = "Warn",
            }
            local icon = icons[severity_map[diagnostic.severity]] or ""
            return string.format("%s %s", icon, diagnostic.message)
        end,
        spacing = 6,
    },
    signs = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.api.nvim_create_user_command("CopyDiagnostic", function()
    local line = vim.api.nvim_win_get_cursor(0)[1] - 1
    local diagnostics = vim.diagnostic.get(0, { lnum = line })

    if #diagnostics == 0 then
        return
    end

    local text = ""
    for _, d in ipairs(diagnostics) do
        text = text .. string.format("[%s] %s\n", vim.diagnostic.severity[d.severity], d.message)
    end

    vim.fn.setreg('+', text) -- Copy vào clipboard
    print("Coppied")
end, {})

vim.cmd [[
  highlight DiagnosticVirtualTextError guifg=#f38ba8 gui=bold
  highlight DiagnosticVirtualTextWarn  guifg=#f9e2af gui=bold
]]
