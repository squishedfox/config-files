-- 1. Install parsers
require('nvim-treesitter').install({ 'vim', 'vimdoc', 'lua', 'rust' })

-- 2. Enable TS features per filetype
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'vim', 'lua', 'rust' },
  callback = function()
    vim.treesitter.start()
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    -- vim.wo.foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

-- 3. Textobjects configuration
require('nvim-treesitter-textobjects').setup({
  select = {
    lookahead = true,
    selection_modes = {
      ['@parameter.outer'] = 'v',
      ['@function.outer'] = 'V',
      ['@class.outer'] = '',
    },
    include_surrounding_whitespace = false,
  },
  move = {
    set_jumps = true,
  },
})

-- 4. Keymaps using the new explicit API
local select = require('nvim-treesitter-textobjects.select')
local move = require('nvim-treesitter-textobjects.move')
local swap = require('nvim-treesitter-textobjects.swap')

-- Select text objects
vim.keymap.set({ 'x', 'o' }, 'af', function()
  select.select_textobject('@function.outer', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'if', function()
  select.select_textobject('@function.inner', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'ac', function()
  select.select_textobject('@class.outer', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'ic', function()
  select.select_textobject('@class.inner', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'ab', function()
  select.select_textobject('@block.outer', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'ib', function()
  select.select_textobject('@block.inner', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'aa', function()
  select.select_textobject('@parameter.outer', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'ia', function()
  select.select_textobject('@parameter.inner', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'al', function()
  select.select_textobject('@loop.outer', 'textobjects')
end)
vim.keymap.set({ 'x', 'o' }, 'il', function()
  select.select_textobject('@loop.inner', 'textobjects')
end)

-- Move between text objects
vim.keymap.set({ 'n', 'x', 'o' }, ']f', function()
  move.goto_next_start('@function.outer', 'textobjects')
end)
vim.keymap.set({ 'n', 'x', 'o' }, '[f', function()
  move.goto_previous_start('@function.outer', 'textobjects')
end)
vim.keymap.set({ 'n', 'x', 'o' }, ']c', function()
  move.goto_next_start('@class.outer', 'textobjects')
end)
vim.keymap.set({ 'n', 'x', 'o' }, '[c', function()
  move.goto_previous_start('@class.outer', 'textobjects')
end)
vim.keymap.set({ 'n', 'x', 'o' }, ']b', function()
  move.goto_next_start('@block.outer', 'textobjects')
end)
vim.keymap.set({ 'n', 'x', 'o' }, '[b', function()
  move.goto_previous_start('@block.outer', 'textobjects')
end)

-- Swap parameters
vim.keymap.set('n', '<leader>sn', function()
  swap.swap_next('@parameter.inner')
end)
vim.keymap.set('n', '<leader>sp', function()
  swap.swap_previous('@parameter.inner')
end)
