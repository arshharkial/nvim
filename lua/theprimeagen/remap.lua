vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>vt", ":vsplit term://%:p:h//zsh<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Create Empty Buffer
vim.keymap.set("n", "<leader>nb", ":enew<CR>", {})

vim.keymap.set("n", "<leader>ct", ":CloakToggle<CR>", { silent = true })
vim.g.mapleader = " "
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>vt", ":vsplit term://%:p:h//zsh<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Create Empty Buffer
vim.keymap.set("n", "<leader>nb", ":enew<CR>", {})

vim.keymap.set("n", "<leader>ct", ":CloakToggle<CR>", { silent = true })

-- Toggle Wrap
vim.keymap.set("n", "<C-s>", ":set wrap!<CR>", { silent = true })
vim.opt.conceallevel = 1

-- TODO Comments

vim.keymap.set("n", "<leader>]", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>[", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "<leader>pt", ":TodoTelescope<CR>", { silent = true })
vim.keymap.set("n", "<leader>db", ":DBUI<CR>", { silent = true })
-- vim.keymap.set("n", "<M-.>", "<C-w>+<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<M-,>", "<C-w>-<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<C->>", "<C-w>><CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<C-<>", "<C-w><<CR>", { noremap = false, silent = true })

vim.keymap.set(
	"n",
	"<leader>hy",
	"<cmd>HurlYank<CR>",
	{ desc = 'Run hurl file in buffer and yank contents to the register "*"' }
)
vim.keymap.set(
	"n",
	"<leader>hr",
	"<cmd>HurlRun<CR>",
	{ desc = "Run hurl file in buffer and paste it's content in:o a split window" }
)
vim.keymap.set(
	"n",
	"<leader>hv",
	"<cmd>HurlRunVerbose<CR>",
	{ desc = "Run hurl file and get additional meta info along with it" }
)
vim.keymap.set(
	"n",
	"<leader>hh",
	"<cmd>CurlGoFromCursor<CR>",
	{ desc = "Run a curl request from the url under the cursor" }
)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>vt", ":vsplit term://%:p:h//zsh<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Create Empty Buffer
vim.keymap.set("n", "<leader>nb", ":enew<CR>", {})

vim.keymap.set("n", "<leader>ct", ":CloakToggle<CR>", { silent = true })

-- Toggle Wrap
vim.keymap.set("n", "<C-s>", ":set wrap!<CR>", { silent = true })
vim.opt.conceallevel = 1

-- TODO Comments

vim.keymap.set("n", "<leader>]", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>[", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "<leader>pt", ":TodoTelescope<CR>", { silent = true })
vim.keymap.set("n", "<leader>db", ":DBUI<CR>", { silent = true })
-- vim.keymap.set("n", "<M-.>", "<C-w>+<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<M-,>", "<C-w>-<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<C->>", "<C-w>><CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<C-<>", "<C-w><<CR>", { noremap = false, silent = true })

vim.keymap.set(
	"n",
	"<leader>hy",
	"<cmd>HurlYank<CR>",
	{ desc = 'Run hurl file in buffer and yank contents to the register "*"' }
)
vim.keymap.set(
	"n",
	"<leader>hr",
	"<cmd>HurlRun<CR>",
	{ desc = "Run hurl file in buffer and paste it's content in:o a split window" }
)
vim.keymap.set(
	"n",
	"<leader>hv",
	"<cmd>HurlRunVerbose<CR>",
	{ desc = "Run hurl file and get additional meta info along with it" }
)
vim.keymap.set(
	"n",
	"<leader>hh",
	"<cmd>CurlGoFromCursor<CR>",
	{ desc = "Run a curl request from the url under the cursor" }
)

-- Toggle Wrap
vim.keymap.set("n", "<C-s>", ":set wrap!<CR>", { silent = true })
vim.opt.conceallevel = 1

-- TODO Comments

vim.keymap.set("n", "<leader>]", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>[", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "<leader>pt", ":TodoTelescope<CR>", { silent = true })
vim.keymap.set("n", "<leader>db", ":DBUI<CR>", { silent = true })
-- vim.keymap.set("n", "<M-.>", "<C-w>+<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<M-,>", "<C-w>-<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<C->>", "<C-w>><CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<C-<>", "<C-w><<CR>", { noremap = false, silent = true })

vim.keymap.set(
	"n",
	"<leader>hy",
	"<cmd>HurlYank<CR>",
	{ desc = 'Run hurl file in buffer and yank contents to the register "*"' }
)
vim.keymap.set(
	"n",
	"<leader>hr",
	"<cmd>HurlRun<CR>",
	{ desc = "Run hurl file in buffer and paste it's content in:o a split window" }
)
vim.keymap.set(
	"n",
	"<leader>hv",
	"<cmd>HurlRunVerbose<CR>",
	{ desc = "Run hurl file and get additional meta info along with it" }
)
vim.keymap.set(
	"n",
	"<leader>hh",
	"<cmd>CurlGoFromCursor<CR>",
	{ desc = "Run a curl request from the url under the cursor" }
)
