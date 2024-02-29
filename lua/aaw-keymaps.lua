
vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'kj', '<Esc>')
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>tt', ':terminal<CR>')
map('n', '<leader>gc', ':CommentToggle<CR>')
