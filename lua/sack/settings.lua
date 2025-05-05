local map = vim.keymap.set

--things to add
--

--LEADERKEYS--
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--OPTIONS
vim.g.have_nerd_font = true
--Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

--Turn this off when you get a status bar
--vim.opt.showmode = false

--OS and Nvim clipboard sync
-- vim.schedule(function()
--   vim.opt.clipboard = 'unnamedplus'
-- end)

vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'number'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.termguicolors = true


--KEYMAPS--
map('n', '<Esc>', ':nohlsearch<CR>', {silent = true})
--Disabling the arrow keys in NORMAL mode
map('n', '<left>', '<cmd>echo "Use h to move!!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!!"<CR>')
--Keybinds to make split navigation easier
--CTRL + hjkl to move beteween them
map('n', '<C-h>', '<C-w><C-h>')
map('n', '<C-j>', '<C-w><C-j>')
map('n', '<C-k>', '<C-w><C-k>')
map('n', '<C-l>', '<C-w><C-l>')
--Keybind to write so that I don't lose my mind 
map('n', '<leader>w', ':write<CR>')


--AUTOCOMMANDS--
-- Highlight when yanking 
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
