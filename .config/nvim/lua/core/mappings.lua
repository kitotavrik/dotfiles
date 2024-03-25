vim.g.mapleader = " "

vim.api.nvim_set_keymap("", "n", "<Nop>", { })
vim.keymap.set("", "<leader>", ":nohlsearch<CR>", {noremap = true, silent = true})


-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree left<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>t', ':ToggleTerm size=10 dir=./ direction=horizontal name=desktop<CR>')


-- Barbar setup
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader><left>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader><right>', '<Cmd>BufferNext<CR>', opts)
-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
-- Sort automatically by...
map('n', '<leader>bn', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
