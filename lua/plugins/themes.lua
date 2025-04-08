return { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function ()
        require("catppuccin").setup({
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true,
        })
    end,

}
