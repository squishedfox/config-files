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
	vim.keymap.set("n", "<leader>n", function ()
		require('neotest').run.run();
	end, { buf = bufnr, desc = "run the nearest test"})
	vim.keymap.set("n", "<leader>nf", function ()
		require('neotest').run.run(vim.fn.expand('%'))
	end, { buf = bufnr, desc = "Run current file"})
	vim.keymap.set("n", "<leader>na", function ()
		require('neotest').run.run({ suite = true })
	end, { buf = bufnr, desc = "Run all tests"})
	vim.keymap.set("n", "<leader>nd", function ()
		require('neotest').run.run({ strategy = 'dap' })
	end, { buf = bufnr, desc = "Debug nearest test"})
        vim.keymap.set("n", "<leader>ns", function ()
		require('neotest').run.stop()
	end, { buf = bufnr, desc = "Stop test"})
	vim.keymap.set("n", "<leader>nn", function ()
		require('neotest').run.attach()
	end, { buf = bufnr, desc = "Attach to the nearest test"})
	vim.keymap.set("n", "<leader>no", function ()
		require('neotest').output.open()
	end, { buf = bufnr, desc = "Show test output"})
	vim.keymap.set("n", "<leader>np", function ()
		require('neotest').output_panel.toggle()
	end, { buf = bufnr, desc = "Toggle output panel"})
	vim.keymap.set("n", "<leader>nv", function ()
		require('neotest').summary.toggle()
	end, { buf = bufnr, desc = "Toggle summary"})
	vim.keymap.set("n", "<leader>nc", function ()
		require('neotest').run.run({ suite = true, env = { CI = true }})
	end, { buf = bufnr, desc = "Run all tests with CI"})
    end,
  },
  -- DAP configuration
  dap = {},
}
