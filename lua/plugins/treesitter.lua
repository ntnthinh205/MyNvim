return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			-- auto install
			auto_install = true,
			-- add language you want to highlight in code
			ensure_installed = {"c", "lua", "python", "cpp", "rust", "go",},
			sync_install = false,
			highlight = { 
                enable = true,
                additional_vim_regex_highlighting = false,     
            },
			indent = { enable = true },
		})
	end,
}
