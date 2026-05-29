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
      end, { buffer = bufnr, desc = "run the nearest test", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>nf", function ()
        require('neotest').run.run(vim.fn.expand('%'))
      end, { buffer = bufnr, desc = "Run current file", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>na", function ()
        require('neotest').run.run({ suite = true })
      end, { buffer = bufnr, desc = "Run all tests", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>nd", function ()
        require('neotest').run.run({ strategy = 'dap' })
      end, { buffer = bufnr, desc = "Debug nearest test", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>ns", function ()
        require('neotest').run.stop()
      end, { buffer = bufnr, desc = "Stop test", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>nn", function ()
        require('neotest').run.attach()
      end, { buffer = bufnr, desc = "Attach to the nearest test", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>no", function ()
        require('neotest').output.open()
      end, { buffer = bufnr, desc = "Show test output", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>np", function ()
        require('neotest').output_panel.toggle()
      end, { buffer = bufnr, desc = "Toggle output panel", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>nv", function ()
        require('neotest').summary.toggle()
      end, { buffer = bufnr, desc = "Toggle summary", silent = true, noremap = true })
      vim.keymap.set("n", "<leader>nc", function ()
        require('neotest').run.run({ suite = true, env = { CI = true }})
      end, { buffer = bufnr, desc = "Run all tests with CI", silent = true, noremap = true })
    end,
  },
  -- DAP configuration
  dap = {},
}
