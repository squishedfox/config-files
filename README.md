# config-files

My NeoVim Configuration Setup

## How to Use

### On Arch Linux using Pacman

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

9. Install `node` following https://nodejs.org/en/download
10. Install other language servers for web development

```sh
npm install -g typescript-language-server \
  typescript \
  eslint \
  prettier \
  vscode-langservers-extracted \
  @tailwindcss/language-server \
  sql-language-server
```

11. Add Clipboard support

```sh
sudo pacman -S xclip  # for X11
# or
sudo pacman -S wl-clipboard  # for Wayland
```

12. Install Plugins with `PlugInstall`
13. Happy Coding

### On MacOS using Homebrew

1. Intall [vim-plug](https://github.com/junegunn/vim-plug#installation)
2. Install your [nerdfont](https://www.nerdfonts.com/font-downloads) of choice
3. Install Ripgrep see https://github.com/BurntSushi/ripgrep#installation

```sh
brew install ripgrep
```
4. Install make and cmake required for 'nvim-telescope/telescope-fzf-native.nvim'

```sh
brew install make cmake gcc
```

5. Install fd for telescope. see https://github.com/sharkdp/fd and https://repology.org/repository/arch

```sh
brew install fd
```

6. Install Rust onto your system
7. Install rust tools with

```sh
rustup component add rust-analyzer rust-src clippy rustfmt
```

8. Install other language servers

```sh
brew install lua-language-server tree-sitter-cli
```

9. Install NodeJS

```sh
brew install node
```

10. Install language servers for web developmenet

```sh
npm install -g typescript-language-server \
  typescript \
  eslint \
  prettier \
  vscode-langservers-extracted \
  @tailwindcss/language-server \
  sql-language-server
```

11. Install Plugins with `PlugInstall`
12. Happy Coding

## Key bindings

Leader key is `\` (Neovim default).

### LSP

| Key          | Action                       |
| ------------ | ---------------------------- |
| `grd`        | Go to declaration            |
| `grD`        | Go to definition             |
| `gri`        | Go to implementation         |
| `grr`        | Find references              |
| `grn`        | Rename symbol                |
| `g.`         | Code action                  |
| `K`          | Hover documentation          |
| `E`          | Show diagnostic in float     |
| `<C-k>`      | Signature help               |
| `<leader>D`  | Type definition              |
| `<leader>f`  | Format buffer                |
| `<leader>wa` | Add workspace folder         |
| `<leader>wr` | Remove workspace folder      |
| `<leader>wl` | List workspace folders       |

### Completion (nvim-cmp)

| Key         | Action                            |
| ----------- | --------------------------------- |
| `<C-Space>` | Trigger completion                |
| `<CR>`      | Confirm selection                 |
| `<Tab>`     | Next item / jump snippet forward  |
| `<S-Tab>`   | Prev item / jump snippet backward |
| `<C-b>`     | Scroll docs up                    |
| `<C-f>`     | Scroll docs down                  |
| `<C-e>`     | Abort completion                  |

### File explorer & Telescope

| Key          | Action            |
| ------------ | ----------------- |
| `<leader>e`  | Toggle NvimTree   |
| `<leader>ff` | Find files        |
| `<leader>fg` | Live grep         |
| `<leader>fb` | List open buffers |
| `<leader>fh` | Search help tags  |

### Comments

| Key             | Action                              |
| --------------- | ----------------------------------- |
| `gcc`           | Toggle current line as comment      |
| `gc` (visual)   | Toggle selection as comment         |
| `gcap`          | Toggle around paragraph             |
| `gbc`           | Toggle current line as block comment |

### Debugger (DAP)

| Key          | Action                          |
| ------------ | ------------------------------- |
| `<F5>`       | Continue / start debug session  |
| `<F10>`      | Step over                       |
| `<F11>`      | Step into                       |
| `<F12>`      | Step out                        |
| `<leader>db` | Toggle breakpoint               |
| `<leader>dB` | Conditional breakpoint (prompt) |
| `<leader>dr` | Open DAP REPL                   |
| `<leader>dl` | Re-run last debug session       |
| `<leader>du` | Toggle DAP UI panel             |
| `<leader>dt` | Terminate session               |

### Terminal

| Key     | Action                       |
| ------- | ---------------------------- |
| `<Esc>` | Exit terminal mode to normal |
