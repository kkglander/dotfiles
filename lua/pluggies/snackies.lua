return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        animate = { enabled = false},
        bigfile = { enabled = true },
        dashboard = { enabled = false },
        explorer = { enabled = false },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = false },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = false },
        lazygit = { enabled = true},
        terminal = { enabled = true},
        },
    keys = {
        --Picker
        {'<leader>ff', function() Snacks.picker.smart() end, desc = "Find Files hopefully" },
        {'<leader>fg', function() Snacks.picker.grep() end, desc = "Grep"},
        --Lazygit
        {'<leader>gl', function() Snacks.lazygit.open() end, desc = "Open Lazygit"},
        {'<leader>gb', function() Snacks.gitbrowse.open() end, desc = "Open Git Repo in Browser"},
        --Terminal
        {'<leader>t', function() Snacks.terminal.toggle(cmd) end, desc = "Toggle Terminal"},
    }
}

