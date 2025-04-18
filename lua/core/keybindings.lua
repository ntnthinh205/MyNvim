local map = vim.keymap.set

map("n", "<leader>cc", ":CopyDiagnostic<CR>", { desc = "Copy diagnostic at current line" })
map("n", "<Esc>", ":nohlsearch<CR>")

map("n", "J", "5jzz", { noremap = true, silent = true })
map("n", "K", "5kzz", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })
map("i", "kj", "<Esc>", { noremap = true, silent = true })
map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("i", "kk", "<Esc>", { noremap = true, silent = true })
map("v", "q", "<Esc>", { noremap = true, silent = true })

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

map("n", "<Leader>vs", ":vsplit<CR>", { noremap = true, silent = true })
map("n", "<Leader>hs", ":split<CR>", { noremap = true, silent = true })

map("n", "<C-a>", "GVgg", { noremap = true, silent = true })

map("n", "vv", "V", { noremap = true, silent = true })



