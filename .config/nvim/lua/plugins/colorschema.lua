return {
    {
        "neanias/everforest-nvim",
        main = "everforest",
        opts = {
            background = "hard",
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            flavour = "auto",
            no_italic = true, -- Force no italic
            no_bold = true, -- Force no bold
            no_underline = false, -- Force no underline
        },
    },
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.gruvbox_material_enable_italic = true
            -- vim.cmd.colorscheme('gruvbox-material')
        end
    }
}