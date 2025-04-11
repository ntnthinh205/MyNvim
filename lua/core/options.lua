-- _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|
-- by Stephan Raabe (2023)

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- highlight
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

-- disable compatibility to old-time vi
vim.o.compatible = false

-- show matching parentheses
vim.o.showmatch = true

-- case insensitive search
vim.o.ignorecase = true

-- middle-click paste with mouse
vim.o.mouse = 'v'

-- highlight search results
vim.o.hlsearch = true

-- incremental search
vim.o.incsearch = true

-- number of columns occupied by a tab
vim.o.tabstop = 4

-- see multiple spaces as tabstops so <BS> does the right thing
vim.o.softtabstop = 4

-- converts tabs to white space
vim.o.expandtab = true

-- width for auto-indents
vim.o.shiftwidth = 4

-- indent a new line the same amount as the line just typed
vim.o.autoindent = true

-- add line numbers
vim.o.number = true
vim.o.relativenumber = true

-- get bash-like tab completions
vim.o.wildmode = 'longest,list'

-- enable filetype-specific indenting
vim.cmd('filetype plugin indent on')

-- enable syntax highlighting
vim.o.syntax = 'on'

-- enable mouse click
vim.o.mouse = 'a'

-- use system clipboard
vim.o.clipboard = 'unnamedplus'

-- enable faster scrolling
vim.o.ttyfast = true

-- hightlight current line
vim.opt.termguicolors = true

-- color
vim.api.nvim_set_hl(0, 'Normal',        { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NormalNC',      { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NonText',       { fg = '#aaaaaa', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'SignColumn',    { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'TabLine',       { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NormalFloat',   { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'Pmenu',         { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'FloatBorder',   { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'PmenuBorder',   { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpBorder',     { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'WinSeparator',  { fg = '#ffffff', bg = 'NONE' })

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.cmd [[
      highlight Normal       guifg=#ffffff guibg=NONE
      highlight NormalNC     guifg=#ffffff guibg=NONE
      highlight NonText      guifg=#aaaaaa guibg=NONE
      highlight SignColumn   guifg=#ffffff guibg=NONE
      highlight TabLine      guifg=#ffffff guibg=NONE
      highlight NormalFloat  guifg=#ffffff guibg=NONE
      highlight Pmenu        guifg=#ffffff guibg=NONE
      highlight FloatBorder  guifg=#ffffff guibg=NONE
      highlight PmenuBorder  guifg=#ffffff guibg=NONE
      highlight CmpBorder    guifg=#ffffff guibg=NONE
      highlight WinSeparator guifg=#ffffff guibg=NONE
    ]]
  end
})
vim.opt.cursorline = true;
vim.api.nvim_set_hl(0, 'CursorLine',  { fg = 'NONE', bg = 'NONE', bold = true })

