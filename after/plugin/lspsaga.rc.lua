local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>ln', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<leader>ld', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<leader>lf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<leader>lh', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', '<leader>lp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', '<leader>lr', '<Cmd>Lspsaga rename<CR>', opts)
