return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup {}

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'Append buffer' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Show harpoon buffers' })

    vim.keymap.set('n', '<leader>h', function()
      harpoon:list():select(1)
    end, { desc = 'Switch to 1. buffer' })
    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():select(2)
    end, { desc = 'Switch to 2. buffer' })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():select(3)
    end, { desc = 'Switch to 3. buffer' })
    vim.keymap.set('n', '<leader>l', function()
      harpoon:list():select(4)
    end, { desc = 'Switch to 4. buffer' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():prev()
    end, { desc = 'Switch to prev. buffer' })
    vim.keymap.set('n', '<leader>n', function()
      harpoon:list():next()
    end, { desc = 'Switch to next buffer' })
  end,
}
