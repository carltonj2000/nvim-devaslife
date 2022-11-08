vim.g.mapleader = " "

local keymap = vim.keymap
-- del without yank -- not fan of below
-- keymap.set('n', 'x', '"_x')
-- inc/dec
keymap.set("n", "<leader>nv", ":e ~/.config/nvim/lua/maps.lua<cr>")
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- del backwards
keymap.set("n", "dw", 'vb"_d')
-- selecte all
keymap.set("n", "<C-a>", "ggvG$")
-- tab open/close aka workspace
keymap.set("n", "<leader>wa", ":tabedit<Return>", { silent = true })
keymap.set("n", "<leader>wx", "<C-w>c", { silent = true })
-- split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })
-- move between splits
--keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<up>", "<C-w>k")
keymap.set("", "s<down>", "<C-w>j")
keymap.set("", "s<right>", "<C-w>l")
keymap.set("", "sh", "<C-w>h", { silent = true, noremap = true })
keymap.set("", "sk", "<C-w>k", { silent = true, noremap = true })
keymap.set("", "sj", "<C-w>j", { silent = true, noremap = true })
keymap.set("", "sl", "<C-w>l", { silent = true, noremap = true })
keymap.set("", "sx", ":q<Return>")
-- resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
keymap.set("n", "<leader>sh", "<C-w><")
keymap.set("n", "<leader>sl", "<C-w>>")
keymap.set("n", "<leader>sk", "<C-w>+")
keymap.set("n", "<leader>sj", "<C-w>-")
--
keymap.set("i", "<C-o>", "<esc>O")
keymap.set("i", "kj", "<esc>")
-- terminal
local Terminal = require("toggleterm.terminal").Terminal
local toggle_lazygit = function()
	local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
	return lazygit:toggle()
end
keymap.set("n", "<leader>tt", ":ToggleTerm direction=vertical size=80<cr>")
keymap.set("n", "<leader>tg", toggle_lazygit)
keymap.set("t", "<C-H>", "<c-\\><c-n><c-w>h", { noremap = true })
keymap.set("t", "<C-J>", "<c-\\><c-n><c-w>j", { noremap = true })
keymap.set("t", "<C-K>", "<c-\\><c-n><c-w>k", { noremap = true })
keymap.set("t", "<C-L>", "<c-\\><c-n><c-w>l", { noremap = true })
keymap.set("t", "<C-t>", "<c-\\><c-n>:2ToggleTerm direction=horizontal<cr>", { noremap = true })
keymap.set("t", "<C-r>", "<c-\\><c-n>:3ToggleTerm direction=horizontal<cr>", { noremap = true })
keymap.set("t", "<C-v>", "<c-\\><c-n>:2ToggleTerm direction=vertical<cr>", { noremap = true })
keymap.set("t", "<C-b>", "<c-\\><c-n>:3ToggleTerm direction=vertical<cr>", { noremap = true })
