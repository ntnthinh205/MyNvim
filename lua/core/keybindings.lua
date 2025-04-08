local map = vim.keymap.set

map("n", ";", ":", { noremap = true })
map("n", "J", "5jzz", { noremap = true, silent = true })
map("n", "K", "5kzz", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })
map("i", "kj", "<Esc>", { noremap = true, silent = true })
map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("i", "kk", "<Esc>", { noremap = true, silent = true })
