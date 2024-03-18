print("call telescope.lua")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope keymaps<cr>")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope resume<cr>")

require("telescope").setup({
    defaults = {
        path_dispaly = { truncate = 0 }
    }
})
