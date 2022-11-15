# NeoVIM Setup By devaslife

[Neovim Builtin LSP Setup Guide](https://youtu.be/puWgHa7k3SY)

## Installation Order

- NeoVim
- Setup base, highlights, maps, linux/mac/win-clipboard
- Packer and plugins.lua
- setup colorize and rest of packages in plugins.lua
- for lsp's set up mason, mason-config then lspconfig

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cargo install tree-sitter-cli # after in nvim run :TSUpdate
```

### Servers

```bash
npm i -g typescript-language-server
npm install -g @fsouza/prettierd
go install golang.org/x/tools/gopls@latest # mv $HOME/go to $PATH
```

Language servers that need binaries will be store in ~/.config/nvim/langservers.
This directory will be ignored by .gitignore.

Store in the langserver directory the binaries for lua-language-server
and create a symbolic link in /usr/local/bin to the bin directory exe.

## Code History

The NeoVim setup in this repository is based on the
[Set up Neovim on ...](https://youtu.be/ajmK0ZNcM4Q)
video and corresponding
[blog](https://dev.to/craftzdog/my-neovim-setup-for-react-typescript-tailwind-css-etc-58fb).

## NeoVim Commands
