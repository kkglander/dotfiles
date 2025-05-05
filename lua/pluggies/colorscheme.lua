return {
    {
        'shaunsingh/nord.nvim',
        priority = 1000,
        config = function()
            -- vim.g.nord_contrast = true
            -- vim.g.nord_borders = false
            -- vim.g.nord_disable_background = false
            -- vim.g.nord_italic = true
            -- vim.g.nord_uniform_diff_background = true
            -- vim.g.nord_bold = false
            -- vim.cmd.colorscheme 'nord'
        end,
    },
    {
        {
            "ellisonleao/gruvbox.nvim",
            priority = 1000 ,
            config = true,
            opts = {
                terminal_colors = false,
                underline = true,
                bold = true,
                italic = {
                    comments = true,
                    strings = true,
                },
                inverse = true,
                contrast = "",
                overrides = {
                    -- BufferLineFill = { bg = "#1D2021" },
                    -- BufferLineBackground = { bg = "#282828" },
                    -- Bufferline = { bg = "#282828" },
                    -- SignColomn = { bg = "#1D2021" }

                }
            }
        }
    },
    {
        'f4z3r/gruvbox-material.nvim',
        name = 'gruvbox-material',
        lazy = false,
        priority = 1000,
        opts = {
            italics = true,
            contrast = 'medium',
            comments = {
                italics = true,
            },

        },
    },
}
