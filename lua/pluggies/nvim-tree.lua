return {
    'nvim-tree/nvim-tree.lua',
    version = "*",
    lazy = false,
    requires = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require('nvim-tree').setup {}
        local api = require 'nvim-tree.api'
        vim.keymap.set('n', '<leader>\\', api.tree.toggle)
        -- vim.keymap.set('n', '\\\\', api.tree.open)
        vim.keymap.set('n', '\\\\', function()--this focuses/opens the tree or switches back to the current file
            if vim.fn.bufname():match 'NvimTree_' then
                vim.cmd.wincmd 'p'
            else
                api.tree.open()
            end
        end, { desc = 'nvim-tree: toggle' })
    end,
}

