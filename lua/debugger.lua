require('dap').adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = 'codelldb',   -- install via: cargo install codelldb
    args = { "--port", "${port}" },
  },
}

require('dap').configurations.rust = {
  {
    name = "Launch",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}
