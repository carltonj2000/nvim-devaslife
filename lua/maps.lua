vim.g.mapleader = " "

local keymap = vim.keymap
-- del without yank
keymap.set('n', 'x', '"_x')
-- inc/dec
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
-- del backwards
keymap.set('n', 'dw', 'vb"_d')
-- selecte all
keymap.set('n', '<C-a>', 'ggvG$')
-- tab open/close
keymap.set('n', '<leader>te', ':tabedit<Return>', { silent = true })
keymap.set('n', '<leader>tc', '<C-w>c', { silent = true })
-- split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- move between splits
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
keymap.set('', 'sx', ':q<Return>')
-- resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
--
keymap.set('i', '<C-o>', '<esc>O')
keymap.set('i', 'kj', '<esc>')
