return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            flavour = "auto",
            no_italic = true,     -- Force no italic
            no_bold = true,       -- Force no bold
            no_underline = false, -- Force no underline
        },
    },
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_enable_italic = false
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_colors_override = {
                bg0 = { "#202020", "234" }
            }
        end
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load()
        end
    }
}
