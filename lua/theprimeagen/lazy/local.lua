local local_plugins = {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader><C-1>", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader><C-2>", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader><C-3>", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader><C-4>", function() harpoon:list():replace_at(4) end)
        end
    },
    {
        "vim-apm",
        dir = "~/personal/vim-apm",
        config = function()
            --[[
            local apm = require("vim-apm")

            apm:setup({})
            vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
            --]]
        end
    },
    {
        "vim-with-me",
        dir = "~/personal/vim-with-me",
        config = function() end
    },
}

return local_plugins
