# config-files

My NeoVim Configuration Setup

## How to Use

1. Intall [vim-plug](https://github.com/junegunn/vim-plug#installation)
2. Install your [nerdfont](https://www.nerdfonts.com/font-downloads) of choice
3. Install Ripgrep see https://github.com/BurntSushi/ripgrep#installation

```sh
sudo pacman -S Ripgrep
```
4. Install make and cmake required for 'nvim-telescope/telescope-fzf-native.nvim'

```sh
sudo pacman -S make cmake gcc
```

5. Install fd for telescope. see https://github.com/sharkdp/fd and https://repology.org/repository/arch

```sh
sudo pacman -S fd
```

6. Install Rust onto your system
7. Install rust tools with

```sh
rustup component add rust-analyzer rust-src clippy rustfmt
```

8. Install other language servers

```sh
sudo pacman -S lua-language-server tree-sitter-cli
```

9. Install Plugins with `PlugInstall`
10. Happy Coding
