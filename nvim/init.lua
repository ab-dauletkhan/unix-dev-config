print("My neovim config")

-- Lazy Nvim installation
require("config.lazy")

-- Nvim Options
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

-- Shortcuts to source the config
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- sources whole file
vim.keymap.set("n", "<space>x", ":.lua<CR>") -- sources only line where cursor stays
vim.keymap.set("v", "<space>x", ":lua<CR>") -- sources only selected lines in visual mode

-- Highlight when yanking (copying) text
-- :help vim.highlight.on_yank()
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
