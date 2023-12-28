-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<S-e>", vim.cmd.Ex)
vim.keymap.set("n", "<S-r>", ":Neotree<CR>")
vim.keymap.set("n", "<Space>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<Space>w", vim.cmd.w)
vim.opt.clipboard:append({ "unnamedplus" })
vim.keymap.set("n", "<Space>fm", vim.lsp.buf.format)

-- Telescope
vim.keymap.set("n", "<leader>fo", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "[F]ind by [G]rep" })
vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "[F]ind [D]iagnostics" })
vim.keymap.set("n", "<leader>fr", require("telescope.builtin").resume, { desc = "[F]ind [R]esume" })
vim.keymap.set("n", "<leader>fs", require("telescope.builtin").git_status, { desc = "[F]ind by [G]status" })

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add new file to the harpoon" })
vim.keymap.set("n", "<leader>m", require("harpoon.ui").toggle_quick_menu, { desc = "Open harpoon" })

vim.keymap.set("n", "<Tab>", ui.nav_next)
vim.keymap.set("n", "<S-Tab> <<", ui.nav_prev)

vim.keymap.set("n", "<leader>1", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
  ui.nav_file(4)
end)
vim.keymap.set("n", "<leader>5", function()
  ui.nav_file(5)
end)
vim.keymap.set("n", "<leader>6", function()
  ui.nav_file(6)
end)
