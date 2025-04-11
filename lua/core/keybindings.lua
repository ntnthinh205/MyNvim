local map = vim.keymap.set

map("n", "<leader>cc", ":CopyDiagnostic<CR>", { desc = "Copy diagnostic at current line" })
map("n", "<Esc>", ":nohlsearch<CR>")

map("n", "<C-j>", "5jzz", { noremap = true, silent = true })
map("n", "<C-k>", "5kzz", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })
map("i", "kj", "<Esc>", { noremap = true, silent = true })
map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("i", "kk", "<Esc>", { noremap = true, silent = true })

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

map("n", "vs", ":vsplit<CR>", { noremap = true, silent = true })
map("n", "hs", ":split<CR>", { noremap = true, silent = true })
