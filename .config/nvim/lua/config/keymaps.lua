-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

-- General Keymaps

keymap.del("n", "<leader>-")
keymap.del("n", "<leader>|")
keymap.del("n", "<leader>w|")

vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { desc = "Go to right window", remap = true })

keymap.set("n", "<leader>bt", ":b<space>", { desc = "Go to buffer (either via number or name)", remap = true })
keymap.set("n", "<leader>bk", ":%bd|e#|bd#<CR>", { desc = "Close all buffers except current" })
keymap.set("n", "<leader>w\\", "<C-W>v", { desc = "Split window right", remap = true })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current window split", remap = true })
