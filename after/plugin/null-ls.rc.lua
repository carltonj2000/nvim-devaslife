local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

-- source below from github directory lua/null-ls/builtins/
null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
    formatting.stylua,
    formatting.prettier,
    formatting.rustfmt,
  },
})
