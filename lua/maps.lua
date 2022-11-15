vim.g.mapleader = " "

local keymap = vim.keymap
-- del without yank -- not fan of below
-- keymap.set('n', 'x', '"_x')
-- inc/dec
keymap.set("n", "<leader>q", ":qa<cr>")
keymap.set("n", "<leader>x", ":bd<cr>")
keymap.set("n", "<leader>h", ":noh<cr>")
keymap.set("n", "<leader>nv", ":e ~/.config/nvim/lua/maps.lua<cr>")
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- del backwards
keymap.set("n", "dw", 'vb"_d')
-- selecte all
keymap.set("n", "<C-a>", "ggvG$")
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
keymap.set("t", "ff", "<c-\\><c-n>", { noremap = true })
keymap.set("t", "<C-H>", "<c-\\><c-n><c-w>h", { noremap = true })
keymap.set("t", "<C-J>", "<c-\\><c-n><c-w>j", { noremap = true })
keymap.set("t", "<C-K>", "<c-\\><c-n><c-w>k", { noremap = true })
keymap.set("t", "<C-L>", "<c-\\><c-n><c-w>l", { noremap = true })
keymap.set("t", "<C-t>", "<c-\\><c-n>:2ToggleTerm direction=horizontal<cr>", { noremap = true })
keymap.set("t", "<C-r>", "<c-\\><c-n>:3ToggleTerm direction=horizontal<cr>", { noremap = true })
keymap.set("t", "<C-v>", "<c-\\><c-n>:2ToggleTerm direction=vertical<cr>", { noremap = true })
keymap.set("t", "<C-b>", "<c-\\><c-n>:3ToggleTerm direction=vertical<cr>", { noremap = true })
-- originally in lspsaga.rc
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>ld", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "<leader>la", "<Cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>li", "<Cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("i", "<leader>lh", "<Cmd>Lspsaga signature_help<CR>", opts)
vim.keymap.set("n", "<leader>lp", "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "<leader>lr", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "<leader>lf", "<Cmd>lua vim.lsp.buf.format({timeout_ms = 2000})<CR>", opts)
--
LspConfigs = {}
LspConfigs.on_attach_go = function()
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
end
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { buffer = 0 })
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { buffer = 0 })
-- initiall in telescope.rc
local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local builtin = require("telescope.builtin")
local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files({ no_ignore = false, hidden = false })
end)
vim.keymap.set("n", "<leader>fa", function()
	builtin.find_files({ no_ignore = true, hidden = true })
end)
vim.keymap.set("n", "<leader>fg", function()
	builtin.live_grep()
end)
vim.keymap.set("n", "<leader>fb", function()
	builtin.buffers()
end)
vim.keymap.set("n", "<leader>ft", function()
	builtin.help_tags()
end)
vim.keymap.set("n", "<leader>fr", function()
	builtin.resume()
end)
vim.keymap.set("n", "<leader>fd", function()
	builtin.diagnostics()
end)
vim.keymap.set("n", "<leader>fe", function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
	})
end)
-- tab open/close aka workspace
keymap.set("n", "<leader>wc", ":tabedit<Return>", { silent = true })
keymap.set("n", "<leader>wx", "<C-w>c", { silent = true })
-- initially in bufferline.rc for workspace management
vim.keymap.set("n", "<leader>wn", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<leader>wp", "<Cmd>BufferLineCyclePrev<CR>", {})
-- from cmp originally
CmpConfigs = {}
CmpConfigs.mapping = function(cmp)
	return cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	})
end
