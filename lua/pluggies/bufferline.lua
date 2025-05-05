return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require('bufferline').setup{}
        vim.keymap.set('n', '<leader>p', ':bp<CR>', {silent = true})
        vim.keymap.set('n', '<leader>n', ':bn<CR>', {silent = true})
        vim.keymap.set('n', '<leader>x', ':bd<CR>', {silent = true})
    end,
}
