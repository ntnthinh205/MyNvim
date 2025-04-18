return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<C-\>]],
            hide_numbers = true,
            shade_terminals = false,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "horizontal",
            float_opts = {
                -- border = "curved",
                winblend = 3,
            },
        })

        local Terminal = require("toggleterm.terminal").Terminal

        local float_term = Terminal:new({
            direction = "float",
            hidden = true,
        })
        function _FLOAT_TERM()
            float_term:toggle()
        end

        local vert_term = Terminal:new({
            direction = "vertical",
            hidden = true,
        })
        function _VERT_TERM()
            vert_term:toggle()
        end

        local hori_term = Terminal:new({
            direction = "horizontal",
            hidden = true,
        })
        function _HORI_TERM()
            hori_term:toggle()
        end

        -- keymaps
        vim.keymap.set("n", "<leader>tf", _FLOAT_TERM, { desc = "Toggle Floating Terminal" })
        vim.keymap.set("n", "<leader>tv", _VERT_TERM, { desc = "Toggle Vertical Terminal" })
        vim.keymap.set("n", "<leader>th", _HORI_TERM, { desc = "Toggle Horizontal Terminal" })
    end,
}
