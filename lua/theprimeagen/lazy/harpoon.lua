return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<M-h>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<M-j>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<M-k>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<M-l>", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader><M-h>", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader><M-j>", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader><M-k>", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader><M-l>", function() harpoon:list():replace_at(4) end)
    end
}