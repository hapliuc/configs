vim.keymap.set('n', '<leader>l', ':bn<CR>', {})
vim.keymap.set('n', '<leader>h', ':bp<CR>', {})
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', {})
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', {})
vim.keymap.set('n', '<C-s>', ':vsplit<CR>', {})
vim.keymap.set('n', '<C-q>', ':q<CR>', {})

vim.keymap.set('n', '<C-u>', ':UndotreeToggle<CR>')
vim.keymap.set('n', '<C-n>', ':Neotree toggle left<CR>')

local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ['<Tab>'] = cmp.mapping.select_next_item(), -- Select next completion item
      ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Select previous completion item
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
  })
