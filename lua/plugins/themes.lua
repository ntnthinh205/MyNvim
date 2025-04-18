return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "frappe", -- latte, frappe, macchiato, mocha
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    telescope = true,
                    treesitter = true,
                },
            })
            -- vim.cmd.colorscheme("catppuccin") -- để đổi theme thì comment/uncomment ở đây
        end,
    },
    {
        "sainnhe/everforest",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.everforest_background = "hard"
            vim.g.everforest_enable_italic = 1
            vim.g.everforest_transparent_background = 0
            vim.opt.termguicolors = true
            vim.g.everforest_ui_contrast = "high"
            vim.g.everforest_disable_italic_comment = 0

            -- vim.cmd("colorscheme everforest")
        end
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- load sớm để áp dụng theme
        lazy = false,
        config = function()
            require("onedarkpro").setup({
                colors = {}, -- bạn có thể override màu ở đây
                options = {
                    cursorline = true,
                    transparency = false, -- nền trong suốt
                    terminal_colors = true,
                },
                styles = {
                    comments = "italic",
                    strings = "",
                },
                highlights = {
                    WinSeparator = { fg = "#ffffff" }, -- Viền giữa các cửa sổ
                },
            })
            vim.cmd("colorscheme onedark_vivid") -- hoặc "onedark_dark" / "onedark_vivid"
        end,
    }
}
