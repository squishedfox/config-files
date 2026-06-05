call plug#begin()
	" Language Server
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'saadparwaiz1/cmp_luasnip'
	" Rust Specific LSP
	Plug 'mrcjkb/rustaceanvim'
	" Debugger
	Plug 'mfussenegger/nvim-dap'
	Plug 'mfussenegger/nvim-dap-ui'
	" Testing
	Plug 'nvim-lua/plenary.nvim'
	Plug 'antoinemadec/FixCursorHold.nvim'
	Plug 'nvim-neotest/nvim-nio'
	Plug 'nvim-neotest/neotest'
	Plug 'nvim-neotest/neotest-plenary'
	" Testing for rust
	Plug 'mrcjkb/rustaceanvim'
	" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " commented out but required
	" Syntax Highlighter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/nvim-treesitter-textobjects'
	Plug 'JoosepAlviste/nvim-ts-context-commentstring'
	" Finder
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
	Plug 'nvim-telescope/telescope.nvim'
	" Theme
	Plug 'EdenEast/nightfox.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nanozuki/tabby.nvim'
	Plug 'lewis6991/gitsigns.nvim'
	" Enhancements
	Plug 'folke/which-key.nvim'
	Plug 'numToStr/Comment.nvim'
	Plug 'windwp/nvim-autopairs'
  " Tailind
  Plug 'prettier-plugin-tailwindcss'
  Plug 'luckasRanarison/tailwind-tools.nvim'
call plug#end()

set number
syntax enable
filetype plugin indent on
colorscheme carbonfox
" Always show tabline plugin
" vim.o.showtabline = 2
lua require('init')

