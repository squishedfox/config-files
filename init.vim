call plug#begin()

	Plug 'neovim/nvim-lspconfig'
	Plug 'rust-lang/rust.vim'
	" Theme
	Plug 'EdenEast/nightfox.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nanozuki/tabby.nvim'
	Plug 'lewis6991/gitsigns.nvim'
call plug#end()

set number
syntax enable
filetype plugin indent on
colorscheme carbonfox
" Always show tabline plugin
" vim.o.showtabline = 2
lua require('init')

