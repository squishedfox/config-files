require("neotest").setup({
  adapters = {
    require("neotest-plenary"),
    require("rustaceanvim.neotest"),
  },
})

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {},
  -- LSP configuration
  server = {
    on_attach = function(_, bufnr)
	-- you can also put keymaps in here
	-- local bufnr = vim.api.nvim_get_current_buf()
	vim.keymap.set("n", "<leader>a", function()
		vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
		-- or vim.lsp.buf.codeAction() if you don't want grouping.
		end,
		{ silent = true, buffer = bufnr }
	)
	vim.keymap.set("n", "K", function()
		-- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
			vim.cmd.RustLsp({'hover', 'actions'})
		end,
		{ silent = true, buffer = bufnr }
	)
      end,
  },
  -- DAP configuration
  dap = {},
}
