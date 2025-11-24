-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- -- ========================================
-- Custom Keymaps for LazyGit & LazyDocker
-- ========================================

local map = vim.keymap.set

-- LazyGit in floating terminal
map("n", "<leader>gg", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "curved",
    },
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
  })
  lazygit:toggle()
end, { desc = "LazyGit" })

-- LazyDocker in floating terminal
map("n", "<leader>ld", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazydocker = Terminal:new({
    cmd = "lazydocker",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "curved",
    },
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
  })
  lazydocker:toggle()
end, { desc = "LazyDocker" })

-- Additional terminal shortcuts
map("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Terminal Horizontal" })
map("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Terminal Float" })
