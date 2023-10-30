require("catppuccin").setup({
    integrations = {
        coc_nvim = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "undercurl" },
                hints = { "undercurl" },
                warnings = { "undercurl" },
                information = { "undercurl" },
            },
        },
    },
    custom_highlights = function(colors)
        return {
            SpecialComment = { fg = colors.flamingo },
        }
    end
})

vim.cmd.colorscheme "catppuccin-latte"
vim.g.airline_theme = "catppuccin"
